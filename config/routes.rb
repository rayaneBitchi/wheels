Rails.application.routes.draw do
<<<<<<< HEAD
=======
  resources :cars, only: [:show, :index, :new, :create]
  devise_for :users
  root to: "pages#home"

  get "/profile", to: "dashboards#profile"
>>>>>>> 38f043dcdec76cfad2c8db60043c411c8173cac3
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :cars, only: [:show, :index, :create, :new]
  devise_for :users
  root to: "pages#home"
end
