class Profile::BaseController < ApplicationController
  before_action :require_user

  private
  def require_user
    render file: '/public/401' unless current_user
  end
end
