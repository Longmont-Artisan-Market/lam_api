ActiveAdmin.register User do
  permit_params :name, :business_name, :role, :password, :email_address

  form do |f|
    f.inputs "User Details" do
      f.input :name
      f.input :business_name
      f.input :role
      f.input :password
      f.input :email_address
    end
    f.actions
  end
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :business_name, :email_address, :password_digest, :role
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :business_name, :email_address, :password_digest, :role]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
