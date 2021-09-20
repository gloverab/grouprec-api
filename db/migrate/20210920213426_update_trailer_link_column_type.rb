class UpdateTrailerLinkColumnType < ActiveRecord::Migration[6.1]
  def change
    change_column :recommendations, :trailer_link, :string
  end
end
