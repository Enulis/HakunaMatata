class RenameEventToEventId < ActiveRecord::Migration
  def change

  	drop_table :event_items
  	
  end
end
