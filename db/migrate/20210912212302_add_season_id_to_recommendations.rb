class AddSeasonIdToRecommendations < ActiveRecord::Migration[6.1]
  def change
    add_reference :recommendations, :season
  end
end
