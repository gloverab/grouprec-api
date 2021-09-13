class CreateMovieStreamingServices < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_streaming_services do |t|
      t.string :name

      t.timestamps
    end
  end
end
