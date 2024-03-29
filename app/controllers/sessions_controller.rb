class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
  if user
    session[:user_id] = user.id
    redirect_to pages_home_path, :notice => "Logged in!"
  else
    flash.now.alert = "Invalid email or password"
    redirect_to register_path
  end
  end

  def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Logged out!"
end
  def login
    user = User.authenticate(params[:email], params[:password])
  if user
    session[:user_id] = user.id
    redirect_to pages_home_path, :notice => "Logged in!"
  else
    flash.now.alert = "Invalid email or password"
    redirect_to register_path
  end
  end

end
