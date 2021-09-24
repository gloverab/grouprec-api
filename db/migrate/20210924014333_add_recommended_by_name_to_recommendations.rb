class AddRecommendedByNameToRecommendations < ActiveRecord::Migration[6.1]
  def change
    add_column :recommendations, :recommended_by_name, :string
  end
end
