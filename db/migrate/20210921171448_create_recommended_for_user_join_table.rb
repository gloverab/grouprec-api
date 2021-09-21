class CreateRecommendedForUserJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :user_recommended_for_joins do |t|
      t.integer :user_id, foreign_key: true
      t.integer :recommendation_id, foreign_key: true
      t.integer :recommended_for_by_id, foreign_key: { to_table: :users }
      
    end
  end
end
