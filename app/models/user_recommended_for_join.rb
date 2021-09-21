class UserRecommendedForJoin < ApplicationRecord
  belongs_to :recommended_for, class_name: "User", foreign_key: :user_id
  belongs_to :recommendation
  belongs_to :recommended_for_by, class_name: "User", foreign_key: :recommended_for_by_id
end