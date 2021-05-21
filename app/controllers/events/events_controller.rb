class Events::EventsController < Events::BaseController

  def show
    @user = current_user
    @event = Event.find(params[:event_id])
  end
end