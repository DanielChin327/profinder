Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :services do
    resources :bookmarks, only: :create
    resources :reviews, only: [:create, :new]
    resources :bookings, only: [:create]
  end
  resources :reviews, only: [:destroy, :update]
  resources :bookmarks, only: [:index, :destroy]

  namespace :professional do
    resources :bookings, only: :index
    # equivalent to => get 'daimyo/bookings', to: 'daimyo/bookings#index'
  end
  resources :bookings, only: [:update, :index]
end
