class RenameItemList < ActiveRecord::Migration
  def change
  	rename_table :event_item_lists, :event_items
  end
end
