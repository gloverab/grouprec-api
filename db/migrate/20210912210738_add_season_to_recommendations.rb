class AddSeasonToRecommendations < ActiveRecord::Migration[6.1]
  def change
    add_column :recommendations, :season, :string
  end
end