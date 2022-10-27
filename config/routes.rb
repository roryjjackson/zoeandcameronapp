Rails.application.routes.draw do
  resources :albums
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :rsvps
  # resources :albums
  # Defines the root path route ("/")
  # root "articles#index"
end
