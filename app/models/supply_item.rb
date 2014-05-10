class SupplyItem < ActiveRecord::Base
	has_many :vendor_items
	has_many :event_items
end
