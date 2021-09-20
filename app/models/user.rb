class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :jwt_authenticatable,
         :registerable,
         :recoverable,
         jwt_revocation_strategy: JwtDenylist

  has_many :recommendations, class_name: 'Recommendation', foreign_key: :recommended_by_id
  has_many :user_recommendation_rankings
  has_many :user_recommendation_joins
  has_many :seconded_recommendations, through: :user_recommendation_joins, source: :recommendation
  has_many :ranked_recommendations, through: :user_recommendation_rankings, source: :recommendation do
    def watchlist
      where("user_recommendation_rankings.seen_status = ?", 'want')
    end

    def seen_fuck
      where("user_recommendation_rankings.rank = ?", 'fuck')
    end

    def seen_meh
      where("user_recommendation_rankings.rank = ?", 'meh')
    end

    def seen_like
      where("user_recommendation_rankings.rank = ?", 'like')
    end

    def seen_love
      where("user_recommendation_rankings.rank = ?", 'love')
    end

    def seen_personal_favorite
      where("user_recommendation_rankings.rank = ?", 'personal-favorite')
    end
  end

  def as_json(options)
    super(:methods => [:recommended_count])
  end

  def recommended_count
    return self.recommendations.count
  end

  def generate_jwt
    JWT.encode({id: id, exp: 60.days.from_now.to_i}, Rails.application.secrets.secret_key_base)
  end

  def watchlist_recommendations
    
  end
end