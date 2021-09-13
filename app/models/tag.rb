class Tag < ApplicationRecord
  has_many :recommendation_tag_joins
  has_many :recommendations, through: :recommendation_tag_joins
end
