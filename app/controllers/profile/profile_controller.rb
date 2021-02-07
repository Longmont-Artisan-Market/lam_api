class Profile::ProfileController < Profile::BaseController
  def show
    @user = current_user
  end
end 
