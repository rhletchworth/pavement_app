class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :venue_id
      t.integer :artist_id
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
