class UsersController < ApplicationController
  respond_to :json
  before_action :authenticate_user!

  def show_current_user
    user = User.find(@current_user_id)

    render json: user, status: :ok
  end

  def update
    user = User.find(@current_user_id)

    if user.update!(user_params)
      render json: user, status: :ok
    end
  end

  def show
    user = User.find(params[:user_id])

    if user
      render json: user, status: :ok
    else
      render json: { message: "User not found" }, status: 400
    end
  end

  def get_watch_list
    user = User.find(params[:user_id])

    watch_list = user.ranked_recommendations.watchlist

    render json: watch_list, include:
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

  def get_recommended_by
    recommendations = User.find(params[:user_id]).recommendations

    render json: recommendations, status: :ok
  end

  def get_recommended_for
    recommendations = User.find(params[:user_id]).user_specific_recommendations

    render json: recommendations, status: :ok
  end

  def get_ranked_recommendations
    user = User.find(params[:user_id])

    ranked_recommendations = user.ranked_recommendations
    render json: ranked_recommendations
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :image, :email, :discord_username, :music_streaming_preference)
  end
end