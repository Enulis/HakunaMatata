class SessionsController < ApplicationController
  def create
    session[:loaded] = true
    user = User.first
    if user
    raise user
  	user = User.authenticate(params[:email], params[:password])
    session[:user_id] = user.primary_key
    #binding.pry
    if user
      redirect_to controller: "events", action: "index"
    else
      redirect_to controller: "sessions", action: "login"
    end
	

  end

  def destroy
  end

  def login
    @user = User.new
  end
end
