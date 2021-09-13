class Season < ApplicationRecord
  has_many :season_recommendation_joins
  has_many :recommendations, through: :season_recommendation_joins
end
