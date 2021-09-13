class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable

  has_many :recommendations, class_name: 'Recommendation', foreign_key: :recommended_by_id
  has_many :user_recommendation_rankings
  has_many :recommendations_to_check_out, through: :user_recommendation_rankings, source: :recommendation

  def generate_jwt
    JWT.encode({id: id, exp: 60.days.from_now.to_i}, Rails.application.secrets.secret_key_base)
  end
end