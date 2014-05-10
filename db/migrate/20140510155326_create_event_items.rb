class CreateEventItems < ActiveRecord::Migration
  def change
    create_table :event_items do |t|
    	t.belongs_to :event
    	t.belongs_to :supply_item
    	t.integer :count
    	t.timestamps
    end
  end
end
