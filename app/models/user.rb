class User < ActiveRecord::Base
	has_many :event_guests
	has_many :events, through: :event_guests


	def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.hashed_passwords == BCrypt::Engine.hash_secret(password, user.salt)
      user
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.salt = BCrypt::Engine.generate_salt
      self.hashed_passwords = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
