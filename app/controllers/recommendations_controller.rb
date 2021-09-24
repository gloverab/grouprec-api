class RecommendationsController < ApplicationController

  def index
    primary_sort = params['primary_sort'] || 'title'
    secondary_sort = params['secondary_sort'] || 'title'
    tertiary_sort = params['secondary_sort'] || 'title'

    order_string = primary_sort + ", " + secondary_sort + ", " + tertiary_sort

    if params['category_id'].present?
      category = Category.find(params['category_id'])
      recommendations = category.recommendations
        .includes([:recommended_by, :user_recommendation_rankings])
        .order(order_string)
    else
      recommendations = Recommendation.all
        .includes([:recommended_by, :user_recommendation_rankings])
        .order(order_string)
    end

    if params['format'] != 'all'
      recommendations = recommendations.where(format: params['format'])
    end

    render json: recommendations, status: :ok

  end

  def create
    recommendation = Recommendation.new(recommendation_params)
    recommendation['recommended_by_id'] = @current_user_id

    if recommendation.save
      params['tags'].each do |t|
        if !t['id'].present?
          tag = Tag.new({ name: t['name'], slug: t['name'].parameterize })
          if tag.save
            RecommendationTagJoin.create({
              tag_id: tag['id'],
              recommendation_id: recommendation['id'],
              added_by_id: @current_user_id
            })
          end
        else
          tag = Tag.find(t['id'])
          RecommendationTagJoin.create({
            tag_id: tag['id'],
            recommendation_id: recommendation['id'],
            added_by_id: @current_user_id
          })
        end
      end

      if params[:category_id]
        CategoryRecommendationJoin.create({
          recommendation_id: recommendation['id'],
          category_id: params[:category_id]
        })
      end

      render json: recommendation, status: :ok

    else
      render json: { error: "Recommendation didn't save." }
    end
  end

  def update
    recommendation = Recommendation.find(params[:id])
    if recommendation.update(recommendation_params)
      render json: recommendation, status: :ok
    end
  end

  def show
    recommendation = Recommendation.find(params[:id])
    render json: recommendation, include: [:recommended_by], status: :ok
  end

  def destroy
    recommendation = Recommendation.find(params[:id])
    if recommendation.destroy
      render json: { message: 'Recommendation has been deleted' }, status: :ok
    end
  end

  private

  def recommendation_params
    params.require(:recommendation).permit(:title, :medium, :do_journeys_cats_hate, :has_orion_seen, :colorization, :ernest_rating, :spotify_link, :apple_music_link, :group_id, :format, :bandcamp_link, :youtube_link, :soundcloud_link, :available_on, :imdb_id, :year, :trailer_link, :image, :amazon_link, :amazon_music_link, :tidal_link, :youtube_music_link, :deezer_link, :pandora_link)
  end
end