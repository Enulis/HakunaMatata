class User < ActiveRecord::Base
	has_many :event_guests
	has_many :events, through: :event_guests


	def self.from_omniauth(auth)
		user = User.new
	    user.facebook_id = auth.uid
	    user.name = auth.info.name
	    user.token = auth.credentials.token
	    user.token_exp = auth.credentials.expires_at
	    user.image_url = auth.image
	    user.save!
	    user
	end
end
