class AddStreamingLinksToReferences < ActiveRecord::Migration[6.1]
  def change
    add_column :recommendations, :amazon_link, :string
    add_column :recommendations, :tidal_link, :string
    add_column :recommendations, :youtube_music_link, :string
    add_column :recommendations, :deezer_link, :string
    add_column :recommendations, :pandora_link, :string
  end
end
