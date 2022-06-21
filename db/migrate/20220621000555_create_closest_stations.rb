class CreateClosestStations < ActiveRecord::Migration[6.0]
  def change
    create_table :closest_stations do |t|
      t.string :track_name
      t.string :station_name
      t.integer :walking_time

      t.timestamps
    end
  end
end
