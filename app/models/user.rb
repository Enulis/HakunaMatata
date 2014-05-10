class User < ActiveRecord::Base
	has_many :event_guests
	def self.from_omniauth(auth)
		user = User.new
	    user.facebook_id = auth.uid
	    user.name = auth.info.name
	    user.save!
	end
end
