class LoginController < ApplicationController

  def new
  end

  def create
      user = User.find_by(email_address: params[:email])

      if user == nil
        flash[:error] = "The credentials you entered are incorrect"
        redirect_to "/login"
      elsif user.authenticate(params[:password])
        session[:user_id] = user.id
        flash[:success] = "You are logged in!"
        redirect_to "/profile"
      else
        flash[:error] = "The credentials you entered are incorrect"
        redirect_to "/login"
      end
  end

  def destroy
    session.clear
    flash[:success] = "You are logged out!"
    redirect_to "/"
  end
end

