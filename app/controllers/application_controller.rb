class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate_admin_user!
    redirect_to '/' unless current_user && current_user.admin?
  end

  def current_admin_user
    current_user
  end

  def destroy_admin_user_session_path
    session.clear
    flash[:success] = "You are logged out!"
    redirect_to "/"
  end

end
