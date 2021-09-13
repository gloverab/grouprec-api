class ChangeColorizationColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :recommendations, :colorization, :string
  end
end
