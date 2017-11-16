class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :venue_name
      t.string :artist_name
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
