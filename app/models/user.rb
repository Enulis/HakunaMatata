class User < ActiveRecord::Base
	has_many :event_guests
	has_many :events, through: :event_guests


	def self.from_omniauth(auth, session)
		user = User.new
	    user.facebook_id = auth.uid
	    session[:user_name] = auth.info.name
	    session[:image] = auth.image
	    user.token = auth.credentials.token
	    user.token_exp = auth.credentials.expires_at
	    user.save!
	    user
	end
end
