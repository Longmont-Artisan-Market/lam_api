Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  get "/", to: "homepage#index"
  get "/login", to: "login#new"
  post "/login", to: "login#create"
  get "/register", to: "users#new"
  post "/users", to: "users#create"

  namespace :applications do
    get "/:event_id/:user_id", to: "applications#new"
    get "/:application_id", to: "applications#show"
    post "/:event_id/:user_id", to: "applications#create"
  end

  namespace :events do
    get "/:event_id", to: "events#show"
  end

  namespace :profile do
    get "/", to: "profile#show"
  end


end
