class UsersController < ApplicationController

  def new
  end

  def create
    session[:user_info] = user_info
    user = User.new(user_params)
    if user.save
      flash[:success]= "You are now registered and logged in!"
      session.clear
      session[:user_id] = user.id
      redirect_to "/profile"
    else
      flash[:error] = user.errors.full_messages.to_sentence
      redirect_back(fallback_location: "/")
    end
  end

  private

  def user_params
    params.permit(:name, :business_name, :email_address, :password, :password_confirmation)
  end

  def user_info
    params.permit(:name, :business_name, :email_address)
  end
end
