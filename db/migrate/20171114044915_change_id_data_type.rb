class ChangeIdDataType < ActiveRecord::Migration[5.1]
  def change
  	change_column :events, :venue_id, :string
  	change_column :events, :artist_id, :string
  end
end
