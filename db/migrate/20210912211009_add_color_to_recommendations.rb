class AddColorToRecommendations < ActiveRecord::Migration[6.1]
  def change
    add_column :recommendations, :colorization, :integer
  end
end
