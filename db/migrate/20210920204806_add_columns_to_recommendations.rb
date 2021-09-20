class AddColumnsToRecommendations < ActiveRecord::Migration[6.1]
  def change
    add_column :recommendations, :imdb_id, :string
    add_column :recommendations, :year, :integer
    add_column :recommendations, :trailer_link, :integer
    add_column :recommendations, :image, :string
  end
end
