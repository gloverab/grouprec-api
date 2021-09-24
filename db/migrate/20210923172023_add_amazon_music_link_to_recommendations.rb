class AddAmazonMusicLinkToRecommendations < ActiveRecord::Migration[6.1]
  def change
    add_column :recommendations, :amazon_music_link, :string
  end
end
