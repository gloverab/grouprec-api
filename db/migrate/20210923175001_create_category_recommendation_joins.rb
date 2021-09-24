class CreateCategoryRecommendationJoins < ActiveRecord::Migration[6.1]
  def change
    create_table :category_recommendation_joins do |t|
      t.integer :category_id, foreign_key: true
      t.integer :recommendation_id, foreign_key: true
      t.timestamps
    end
  end
end
