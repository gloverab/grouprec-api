class CreateUserRecommendationRankings < ActiveRecord::Migration[6.1]
  def change
    create_table :user_recommendation_rankings do |t|
      t.integer :user_id, foreign_key: true
      t.integer :recommendation_id, foreign_key: true
      t.string :rank

      t.timestamps
    end
  end
end
