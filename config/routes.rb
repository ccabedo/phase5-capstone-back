Rails.application.routes.draw do
  resources :bookings
  resources :listings
  resources :favorites

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
 
  get "/user",  to: "users#show"
  post "/users", to: "users#create"

end
