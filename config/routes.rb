Rails.application.routes.draw do
  root to: "underwears#index"
  devise_for :users
  resources :bookings, only: %i[destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :underwears do
    resources :bookings, only: %i[new create]
  end
  resources :users, only: %i[show]
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get 'about_us', to: 'about_us#show'
  # Defines the root path route ("/")
  # root "posts#index"
  devise_scope :user do
  patch '/users/update_profile', to: 'users#update', as: 'update_user_profile'
end
end
