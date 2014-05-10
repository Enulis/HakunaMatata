class VendorItem < ActiveRecord::Base
	belongs_to :supply_item
	belongs_to :vendor
end