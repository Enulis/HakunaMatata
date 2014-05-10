class EventItemList < ActiveRecord::Base
	belongs_to :event
	has_many :supply_item
end
