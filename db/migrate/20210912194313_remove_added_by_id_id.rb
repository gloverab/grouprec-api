class RemoveAddedByIdId < ActiveRecord::Migration[6.1]
  def change
    remove_reference :recommendation_tag_joins, :added_by_id, foreign_key: { to_table: :users }
  end
end
