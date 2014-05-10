class SessionsController < ApplicationController
  def create

  	user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.facebook_id
    session[:token] = user.token
    #binding.pry
    redirect_to root_url
	

  end

  def destroy
  end

  def login
  end
end
