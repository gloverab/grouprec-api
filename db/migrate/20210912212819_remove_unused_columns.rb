class RemoveUnusedColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :recommendations, :season
    remove_column :recommendations, :season_id
  end
end
