class CreateRecommendationTagJoins < ActiveRecord::Migration[6.1]
  def change
    create_table :recommendation_tag_joins do |t|
      t.integer :recommendation_id, foreign_key: true
      t.integer :tag_id, foreign_key: true
      t.timestamps
    end
  end
end
