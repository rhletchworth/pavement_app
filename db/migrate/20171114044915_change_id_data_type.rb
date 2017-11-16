class ChangeIdDataType < ActiveRecord::Migration[5.1]
  def change
  	change_column :events, :venue_name, :string
  	change_column :events, :artist_name, :string
  end
end
