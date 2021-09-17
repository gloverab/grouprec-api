class Recommendation < ApplicationRecord
  belongs_to :recommended_by, class_name: 'User', foreign_key: :recommended_by_id
  has_many :recommendation_tag_joins
  has_many :tags, through: :recommendation_tag_joins
  has_many :season_recommendation_joins
  has_many :seasons, through: :season_recommendation_joins
  has_many :user_recommendation_rankings
  has_many :user_recommendation_joins
  has_many :additional_recommenders, through: :user_recommendation_joins, source: :user
  
  has_many :ranked_recommendations, through: :user_recommendation_rankings, source: :recommendation do
    def to_watch
      where("user_recommendation_rankings.rank = ?", 'want')
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

  def as_json(options = {})
    super({
      include: [
        recommended_by: {
          only: [:id, :name, :username, :image]
        },
        additional_recommenders: {
          only: [:id, :name, :username]
        },
        recommendation_tag_joins: {
          include: [:tag, :added_by]
        },
        user_recommendation_rankings: {
          only: [:id, :rank, :seen_status, :user_id]
        }
      ]
    }).merge(options)
  end
end
