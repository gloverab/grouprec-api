class AddAvailableOnToRecommendations < ActiveRecord::Migration[6.1]
  def change
    add_column :recommendations, :available_on, :string
  end
end
