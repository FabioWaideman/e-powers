Rails.application.routes.draw do
  devise_for :users
  root to: "products#index",
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  registrations: "users/registrations"

  resources :products do
    resources :orders, only: %i[new create]
  end

  resources :users, only: [:show]
end
