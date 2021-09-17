class UserRecommendationRankingsController < ApplicationController
  respond_to :json

  def index
    if params['rank'].present?
      rankings = UserRecommendationRanking.where(user_id: @current_user_id, rank: params['rank'])
    else
      rankings = UserRecommendationRanking.where(user_id: @current_user_id)
    end

    render json: rankings
  end

  def create
    user_rec_ranking = UserRecommendationRanking.new(user_recommendation_rankings_params)

    user_rec_ranking.recommendation_id = params['recommendation_id']
    user_rec_ranking.user_id = @current_user_id

    if user_rec_ranking.save
      render json: user_rec_ranking, status: :ok
    else
      render json: { error: "something went wrong" }, status: 400
    end
  end

  def update
    puts params
    user_rec_ranking = UserRecommendationRanking.find(params['user_recommendation_ranking']['id'])

    if user_rec_ranking.present?
      user_rec_ranking.update(user_recommendation_rankings_params)
    else
      create
    end
  end

  private

  def user_recommendation_rankings_params
    params.require(:user_recommendation_ranking).permit(:rank, :seen_status)
  end
  
end