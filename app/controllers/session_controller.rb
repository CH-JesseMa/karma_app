class SessionController < ApplicationController

  def index
  end

  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "thanks for logging in!"
      redirect_to("/")
    else
      flash[:error] = "sorry we couldn't log you in, try again maybe!"
      redirect_to login_path
   end
  end

  def destroy
    session[:user_id] = nil
    redirect_to(root_path)
  end
end

