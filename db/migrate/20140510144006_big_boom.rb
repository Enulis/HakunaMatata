class BigBoom < ActiveRecord::Migration
  def change
  	remove_column :events,  :lon
  	remove_column :events,  :lat
  	add_column :events, :location_id, :integer

  	create_table :locations do |t|
      t.float :longitude
      t.float :latitude
      t.integer :capacity
  	end
  	
  	remove_column :supply_items, :price
  	create_table :vendors do |t|
      t.string :name
  	end

  	create_table :vendor_items do |t|
      t.string :name
      t.integer :item_id
      t.integer :vendor_id
  	end
  end
end
