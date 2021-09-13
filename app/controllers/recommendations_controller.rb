class RecommendationsController < ApplicationController

  def index
    primary_sort = params['primary_sort'] || 'title'
    secondary_sort = params['secondary_sort'] || 'title'
    tertiary_sort = params['secondary_sort'] || 'title'
    order_string = primary_sort + ", " + secondary_sort + ", " + tertiary_sort

    recommendations = Recommendation.all
      .includes(:recommended_by)
      .order(order_string)
      
    render json: recommendations, include:
      [
        recommended_by: {
          only: [:id, :name, :username]
        },
        recommendation_tag_joins: {
          include: [:tag, :added_by],
          only: [:tag, :added_by]
        }
      ], status: :ok
  end

  def create

    recommendation = Recommendation.new({
      title: params['recommendation']['title'],
      medium: params['recommendation']['medium'],
      do_journeys_cats_hate: params['recommendation']['do_journeys_cats_hate'],
      has_orion_seen: params['recommendation']['has_orion_seen'],
      ernest_rating: params['recommendation']['ernest_rating'],
      colorization: params['recommendation']['colorization'],
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

  def show
    recommendation = Recommendation.find(params[:id])
    render json: recommendation, include: [:recommended_by], status: :ok
  end

  private
end