class SeasonRecommendationJoin < ApplicationRecord
  belongs_to :season
  belongs_to :recommendation
end
