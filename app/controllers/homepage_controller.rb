class HomepageController < ApplicationController

  def index
    @current_event = Event.open_for_application.first
  end

end
