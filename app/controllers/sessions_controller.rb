class SessionsController < ApplicationController
  def create

  	user = User.find_by_name("Marin")
    raise user
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
