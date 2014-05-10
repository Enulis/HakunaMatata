class AddPictures < ActiveRecord::Migration
  def change

  	 create_table :event_pictures do |t|
    	t.belongs_to :event
    	t.binary	:picture
    	t.timestamps
    end

    create_table :item_pictures do |t|
    	t.belongs_to :supply_item
    	t.binary	:picture
    	t.timestamps
    end
  end
end
