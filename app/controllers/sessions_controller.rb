class SessionsController < ApplicationController
  def new
  end

  def create
  user = User.find_by_username(params[:username])
  
 if user && user.authenticate(params[:password])
	session[:user_id] = user.id
	redirect_to user
	
else
	
	flash.now[:error] = "Invalid email/password."
	render'new'
end
  end

  def destroy
	if signed_in?
		session[:user_id] = nil
	
	else
		flash[:notice] = "You need to log in first"
	end
	redirect_to login_path
	
  end
end
