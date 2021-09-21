class UserRecommendedForJoinsController < ApplicationController
  respond_to :json

  def create(uid)
    user_recommended_for_join = UserRecommendedForJoin.new({
      user_id: params['user_id'],
      recommendation_id: params['recommendation_id'],
    })
    user_recommended_for_join.recommended_for_by_id = @current_user_id
    if user_recommended_for_join.save
      render json: { message: "success" }, status: :ok
    end
  end

  def create_multiple
    successful_ids = []
    user_ids = JSON.parse(params['user_ids'])
    user_ids.each do |uid|
      user_recommended_for_join = UserRecommendedForJoin.new({
        user_id: uid,
        recommendation_id: params['recommendation_id'],
      })
      user_recommended_for_join.recommended_for_by_id = @current_user_id
      if user_recommended_for_join.save
        successful_ids << uid
      end
    end

    if successful_ids.length === user_ids.length
      render json: { message: "success" }, status: :ok
    end
  end
end