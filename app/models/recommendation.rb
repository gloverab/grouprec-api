class Recommendation < ApplicationRecord
  belongs_to :recommended_by, class_name: 'User', foreign_key: :recommended_by_id
  has_many :recommendation_tag_joins
  has_many :tags, through: :recommendation_tag_joins
  has_many :season_recommendation_joins
  has_many :seasons, through: :season_recommendation_joins
end
