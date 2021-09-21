class Group < ApplicationRecord
  has_many :user_group_joins
  has_many :users, through: :user_group_joins
  has_many :recommendations
end
