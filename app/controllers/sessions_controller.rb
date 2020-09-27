class SessionsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]

  def new
  end


  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      log_in(user)
      redirect_to user
    else
      flash.now[:danger] = "Incorrect username or password!"
      render "new"
    end
  end


  def destroy
    log_out if logged_in?
    redirect_to login_path
  end


  # Checks if user is logged in. Redirects to current user if so
  def logged_in_user
    if logged_in?
      flash[:danger] = "Already logged in."
      redirect_to current_user
    end
  end

end
