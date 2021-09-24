class CategoryRecommendationJoin < ApplicationRecord
  belongs_to :category
  belongs_to :recommendation
end
