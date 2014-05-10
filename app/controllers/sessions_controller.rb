class SessionsController < ApplicationController
  def create

  	user = User.authenticate(params[:email], params[:password])
    session[:user_id] = user.primary_key
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
