Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  get "/", to: "homepage#index"
  get "/register", to: "users#new"
  post "/users", to: "users#create"
  get "/applications/:event_id/:user_id", to: "applications#new"

  namespace :events do
    get "/:event_id", to: "events#show"
  end

  namespace :profile do
    get "/", to: "profile#show"
  end


end
