class UserRecommendationJoinsController < ApplicationController
  respond_to :json

  def create
    recommendation = Recommendation.find(params['recommendation_id'])
    existing_additional_recommendation = UserRecommendationJoin.where(user_id: @current_user_id, recommendation_id: params['recommendation_id'])

    if existing_additional_recommendation.present? || recommendation['recommended_by_id'] === @current_user_id
      render json: { error: "You've already recommended this!" }, status: 400
    else
      user_recommendation_join = UserRecommendationJoin.new({
        user_id: @current_user_id,
        recommendation_id: params['recommendation_id']
      })

      if user_recommendation_join.save
        render json: user_recommendation_join.recommendation, status: :ok
      else
        puts "hmmmmmmmmm"
      end
    end
  end

  def destroy
    recommendation = Recommendation.find(params['recommendation_id'])
    user_recommendation_join = recommendation.user_recommendation_joins.find_by(user_id: params['user_id'])
    if user_recommendation_join.destroy
      render json: recommendation, status: 200
    end
  end
  
end