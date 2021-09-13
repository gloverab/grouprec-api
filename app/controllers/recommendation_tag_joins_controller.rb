class RecommendationTagJoinsController < ApplicationController
  respond_to :json

  def index
    render json: RecommendationTagJoin.all, status: :ok
  end

  def create
    existing = RecommendationTagJoin.where(recommendation_id: params['recommendation_id'], tag_id: params['tag_id'])
    puts @current_user_id
    recommendation = RecommendationTagJoin.new({
      recommendation_id: params['recommendation_id'],
      tag_id: params['tag_id']
    })
    if recommendation.save
      render json: recommendation, status: :ok
    end

  end

  def show
    recommendation_tag_join = RecommendationTagJoin.find(params[:id])
    render json: recommendation_tag_join, include: [:recommended_by], status: :ok
  end
  
end