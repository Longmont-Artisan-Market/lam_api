class LoginController < ApplicationController

  def new
  end

  def create
      user = User.find_by(email_address: params[:email])

      if user == nil
        flash[:error] = "We couldn't find that account. Try again or register for an account."
        redirect_to "/"
      elsif user.authenticate(params[:password])
        session[:user_id] = user.id
        if user.admin?
          flash[:success] = "You are logged in!"
          redirect_to "/admin/applications"
        else
          flash[:success] = "You are logged in!"
          redirect_to "/profile"
        end
      else
        flash[:error] = "The credentials you entered are incorrect. Try again or register for an account."
        redirect_to "/"
      end
  end

  def destroy
    session.clear
    flash[:success] = "You are logged out!"
    redirect_to "/"
  end
end
