class UserRecommendationRankingsController < ApplicationController
  respond_to :json

  def index
    
  end

  def create
    user_rec_ranking = UserRecommendationRanking.new({
      recommendation_id: params[:recommendation_id],
      user_id: @current_user_id,
      rank: params[:rank]
    })

    if user_rec_ranking.save
      render json: user_rec_ranking, status: :ok
    else
      render json: { error: "something went wrong" }, status: 400
    end
  end
  
end