Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  get "/", to: "homepage#index"
  get "/register", to: "users#new"
  post "/users", to: "users#create"

  namespace :profile do
    get "/", to: "profile#show"
  end 
end
