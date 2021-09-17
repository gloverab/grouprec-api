class UserRecommendationJoin < ApplicationRecord
  belongs_to :user
  belongs_to :recommendation
end
