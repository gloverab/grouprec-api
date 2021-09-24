class Category < ApplicationRecord
  has_many :category_recommendation_joins
  has_many :recommendations, through: :category_recommendation_joins
end
