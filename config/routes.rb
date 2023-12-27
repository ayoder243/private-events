Rails.application.routes.draw do
  devise_for :users
  root "events#index"

  resources :events, only: [:index, :new, :create, :show]
  resources :users, only: [:show] 
  resources :event_attendees, only: [:new, :create]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
