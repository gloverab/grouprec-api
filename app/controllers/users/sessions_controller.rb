class Users::SessionsController < Devise::SessionsController
  respond_to :json

  def create
    user = User.find_by_email(params[:email])

    if user && user.valid_password?(params[:password])
      token = user.generate_jwt
      response = {
        user: {
          id: user['id'],
          username: user['username'],
          name: user['name'],
          email: user['email'],
          image: user['image'],
          music_streaming_preference: user['music_streaming_preference'],
          recommended_count: user.recommended_count
        },
        token: token
      }
      render json: response.to_json, status: :ok
    else
      render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
    end
  end

  def sign_out
    user = User.find(@current_user_id)
    sign_out user
  end

  private

  def respond_with(resource, _opts = {})
    render json: resource, status: :ok
  end

  def respond_to_on_destroy
    log_out_success && return if @current_user

    log_out_failure
  end

  def log_out_success
    render json: { message: "You are logged out." }, status: :ok
  end

  def log_out_failure
    render json: { message: "Hmm nothing happened."}, status: :unauthorized
  end

  def current_token
    request.env['warden-jwt_auth.token']
  end
end