class ChangeIdDataType < ActiveRecord::Migration[5.1]
  def change
  	change_column :events, :venue_id, :integer
  	change_column :events, :artist_id, :integer
  end
end
