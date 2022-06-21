class AddPropertyRefToClosestStations < ActiveRecord::Migration[6.0]
  def change
    add_reference :closest_stations, :property, foreign_key: true
  end
end
