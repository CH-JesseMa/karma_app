class SessionController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to("/")
    else
      render(:new)
    end
  end

  def destroy
    # we can set the session user_id to nil
    session[:user_id] = nil
    redirect_to root_path
  end
end
