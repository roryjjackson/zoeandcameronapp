Rails.application.routes.draw do
  devise_for :users
  resources :albums
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :rsvps
  # resources :albums
  # Defines the root path route ("/")
  # root "articles#index"
end
