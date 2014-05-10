class Event < ActiveRecord::Base
	belongs_to :user
	has_many :event_guests
	belongs_to :location
end
