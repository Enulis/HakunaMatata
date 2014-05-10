class EventItem < ActiveRecord::Base
	belongs_to :event
	has_many :supply_items
end
