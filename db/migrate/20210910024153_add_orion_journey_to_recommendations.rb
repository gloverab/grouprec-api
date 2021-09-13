class AddOrionJourneyToRecommendations < ActiveRecord::Migration[6.1]
  def change
    add_column :recommendations, :has_orion_seen, :boolean
    add_column :recommendations, :ernest_rating, :string
    add_column :recommendations, :do_journeys_cats_hate, :boolean
  end
end
