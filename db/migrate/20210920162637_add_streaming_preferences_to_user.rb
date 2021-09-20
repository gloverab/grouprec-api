class AddStreamingPreferencesToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :music_streaming_preference, :string, default: 'spotify'
  end
end
