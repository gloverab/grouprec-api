class AddGroupIdToRecommendations < ActiveRecord::Migration[6.1]
  def change
    add_reference :recommendations, :group
  end
end
