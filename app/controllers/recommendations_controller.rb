class RecommendationsController < ApplicationController

  def index
    primary_sort = params['primary_sort'] || 'title'
    secondary_sort = params['secondary_sort'] || 'title'
    tertiary_sort = params['secondary_sort'] || 'title'
    order_string = primary_sort + ", " + secondary_sort + ", " + tertiary_sort

    recommendations = Recommendation.all
      .includes([:recommended_by, :user_recommendation_rankings])
      .order(order_string)
      
    render json: recommendations, status: :ok
  end

  def create
    recommendation = Recommendation.new({
      title: params['recommendation']['title'],
      medium: params['recommendation']['medium'],
      do_journeys_cats_hate: params['recommendation']['do_journeys_cats_hate'],
      has_orion_seen: params['recommendation']['has_orion_seen'],
      ernest_rating: params['recommendation']['ernest_rating'],
      colorization: params['recommendation']['colorization'],
      spotify_link: params['recommendation']['spotify_link'],
      youtube_link: params['recommendation']['youtube_link'],
      soundcloud_link: params['recommendation']['soundcloud_link'],
      bandcamp_link: params['recommendation']['bandcamp_link'],
      available_on: params['recommendation']['available_on'],
      recommended_by_id: @current_user_id
    })

    if recommendation.save
      params['tags'].each do |t|
        puts t
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
    params.require(:recommendation).permit(:title, :medium, :do_journeys_cats_hate, :has_orion_seen, :colorization, :ernest_rating, :spotify_link, :bandcamp_link, :youtube_link, :soundcloud_link, :available_on)
  end
end