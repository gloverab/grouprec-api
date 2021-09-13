class ChangeJourneyOrionColumns < ActiveRecord::Migration[6.1]
  def change
    change_column :recommendations, :do_journeys_cats_hate, :string
    change_column :recommendations, :has_orion_seen, :string
  end
end
