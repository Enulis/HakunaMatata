class EventAddState < ActiveRecord::Migration
  def change

  	add_column :events, :state, :integer
  	add_column :event_guests, :state, :integer
  	
  end
end
