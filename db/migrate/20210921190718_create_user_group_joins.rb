class CreateUserGroupJoins < ActiveRecord::Migration[6.1]
  def change
    create_table :user_group_joins do |t|
      t.integer :user_id, foreign_key: true
      t.integer :group_id, foreign_key: true
      t.timestamps
    end
  end
end
