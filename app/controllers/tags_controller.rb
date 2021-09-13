class TagsController < ApplicationController
  respond_to :json

  def index
    render json: Tag.all.order('name ASC'), status: :ok
  end

  def create
    
  end

  def create_and_associate
    tag = Tag.new({
      name: params['name'],
      slug: params['name'].parameterize
    })

    if tag.save
      recommendation_tag_join = RecommendationTagJoin.new({
        tag_id: tag['id'],
        recommendation_id: params['recommendation_id'],
        added_by_id: @current_user_id
      })

      if recommendation_tag_join.save
        render json: { tag: tag }, status: :ok
      end
    end
  end

  def show
    tag = Tag.find(params[:id])
    render json: tag, include: [:recommended_by], status: :ok
  end
  
end