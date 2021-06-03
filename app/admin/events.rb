ActiveAdmin.register Event do
  
  actions :index, :show, :edit, :update
  permit_params :name, :application_open_date, :application_close_date

end
