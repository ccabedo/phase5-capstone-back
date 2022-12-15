Rails.application.routes.draw do
  resources :bookings
  resources :favorites
  resources :listings
  resources :users

  get '/hello', to: 'application#hello_world'
  
end
