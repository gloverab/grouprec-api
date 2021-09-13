class RecommendationTagJoin < ApplicationRecord
  belongs_to :recommendation
  belongs_to :tag
  belongs_to :added_by, class_name: "User", foreign_key: :added_by_id
end
