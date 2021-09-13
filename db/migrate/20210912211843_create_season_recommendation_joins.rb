class CreateSeasonRecommendationJoins < ActiveRecord::Migration[6.1]
  def change
    create_table :season_recommendation_joins do |t|
      t.integer :season_id, foreign_key: true
      t.integer :recommendation_id, foreign_key: true
      
      t.timestamps
    end
  end
end
