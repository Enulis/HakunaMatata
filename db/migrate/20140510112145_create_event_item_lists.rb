class CreateEventItemLists < ActiveRecord::Migration
  def change
    create_table :event_item_lists do |t|
      t.integer :event
      t.integer :supply_item
      t.integer :count

      t.timestamps
    end
  end
end
