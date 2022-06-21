class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :property_name
      t.integer :rent
      t.text :address
      t.integer :property_age
      t.text :notes

      t.timestamps
    end
  end
end
