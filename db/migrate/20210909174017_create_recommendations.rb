class CreateRecommendations < ActiveRecord::Migration[6.1]
  def change
    create_table :recommendations do |t|
      t.string :title
      t.string :medium
      t.string :youtube_link
      t.string :spotify_link
      t.string :apple_music_link
      t.string :soundcloud_link
      t.string :bandcamp_link
      t.integer :recommended_by_id, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
