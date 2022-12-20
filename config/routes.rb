Rails.application.routes.draw do
  resources :bookings
  resources :listings
  resources :favorites

  get "/listings", to: "listings#index"
  get "/listings", to: "listings#show"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  get "/bookings", to: "bookings#index"
  get "/bookings", to: "bookings#show"
  post "/bookings", to: "bookings#create"
  delete "/bookings", to: "bookings#destroy"
 
  get "/user",  to: "users#show"
  post "/users", to: "users#create"
  # get "/me", to: "users#me"
  # post "/auth/login", to: "auth#login"


end
