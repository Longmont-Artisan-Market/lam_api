ActiveAdmin.register Event do

  permit_params :name, :application_open_date, :application_close_date

end
