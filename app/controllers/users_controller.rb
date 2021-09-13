class UsersController < ApplicationController
  respond_to :json

  def get_watch_list
    user = User.find(params[:user_id])

    watch_list = user.recommendations_to_check_out

    render json: watch_list, status: 200
  end
end