class SessionsController < ApplicationController
  def create

  	user = User.from_omniauth(env["omniauth.auth"], session)
    session[:user_id] = user.facebook_id
    session[:token] = user.token
    #binding.pry
    if(user.token)
      redirect_to controller: "events", action: "index"
    end
	

  end

  def destroy
  end

  def login
  end
end
