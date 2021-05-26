class Applications::ApplicationsController < Applications::BaseController

  def new
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
  end

end