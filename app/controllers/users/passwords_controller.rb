class Users::PasswordsController < Devise::PasswordsController
  respond_to :json

  def edit

  end

  def update
    user = User.find(@current_user_id)
    if user.update(user_params)
      render json: :user, status: :ok
    else
      render json: { error: "Couldn't update password" }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end