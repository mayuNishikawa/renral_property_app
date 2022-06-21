class ChangeColumn < ActiveRecord::Migration[6.0]
  def up
    change_column :properties, :rent, :string
    change_column :properties, :address, :string
    change_column :properties, :property_age, :string
    change_column :closest_stations, :walking_time, :string
  end

  def down
    change_column :properties, :rent, :integer
    change_column :properties, :address, :text
    change_column :properties, :property_age, :integer
    change_column :closest_stations, :walking_time, :integer
  end
end
