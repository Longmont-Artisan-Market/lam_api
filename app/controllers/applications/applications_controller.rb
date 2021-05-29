class Applications::ApplicationsController < Applications::BaseController

  def new
    @user = User.find(params[:user_id])
    @event = Event.find(params[:event_id])
  end

  def create
    application = Application.new(application_params)
    if application.save
      flash[:notice] = "Application created successfully!"
      redirect_to "/applications/#{application.id}"
    else
      flash[:notice] = "You must fill out all fields and/or check at least one box in order to submit this application."
      redirect_to "/applications/#{params[:event_id]}/#{params[:user_id]}"
    end
  end

  def show
    @application = Application.find(params[:application_id])
    @user = @application.user
    @event = @application.event

  end

  private

  def application_params
    params.permit(:website, :facebook_link, :instagram_link, :short_description, :category, :mlm_status, :description, :first_event,
                  :best_gift, :price_range, :booth_choice, :previous_vendor, :previous_efforts, :image_one, :image_two, :additional_info,
                  :event_id, :user_id)
  end

end