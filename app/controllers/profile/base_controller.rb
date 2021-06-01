class Profile::BaseController < ApplicationController
  before_action :require_user

  private
  def require_user
    flash[:success] = "You must login to do that!"
    redirect_to "/profile" unless current_user
  end
end
