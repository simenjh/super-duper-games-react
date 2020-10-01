class ApplicationController < ActionController::Base
  include SessionsHelper

  def redirect_to_catalog_if_logged_in
    if logged_in?
      redirect_to games_path
    end
  end


  def redirect_to_login_unless_logged_in
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
