class AddStatusesToUserRecJoins < ActiveRecord::Migration[6.1]
  def change
    add_column :user_recommendation_rankings, :seen_status, :string
  end
end
