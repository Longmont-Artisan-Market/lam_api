 ActiveAdmin.register Application do
   actions :index, :show, :edit, :update
   permit_params :website, :facebook_link, :instagram_link, :short_description, :category, :mlm_status, :description, :first_event,
                 :best_gift, :price_range, :booth_choice, :previous_vendor, :previous_efforts, :image_one, :image_two, :additional_info,
                 :event_id, :user_id
    # See permitted parameters documentation:
    # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
    #
    # Uncomment all parameters which should be permitted for assignment
    #
    # permit_params :website, :category, :mlm_status, :online_orders, :previous_vendor, :mask_maker, :facebook_link, :instagram_link, :image_one, :image_two, :previous_efforts, :additional_info, :description, :first_event, :price_range, :booth_choice, :user_id
    #
    # or
    #
    # permit_params do
    #    require 'pry'; binding.pry
    #    permitted = [:website, :category, :mlm_status, :online_orders, :previous_vendor, :mask_maker, :facebook_link, :instagram_link, :image_one, :image_two, :previous_efforts, :additional_info, :description, :first_event, :price_range, :booth_choice, :user_id]
    #   permitted << :other if params[:action] == 'create' && current_user.admin?
    #   permitted
    # end
end
