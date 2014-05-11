class SessionsController < ApplicationController
  def create
    session[:loaded] = true
    user = User.first
  	user = User.authenticate(params[:email], params[:password])
    binding.pry
    if user
      session[:user_id] = user.primary_key
      redirect_to controller: "events", action: "index"
      return
    else
      redirect_to controller: "sessions", action: "login"
      return
    end
  end

  def main

  end


  def destroy
  end

  def login
    @user = User.new
  end
end
