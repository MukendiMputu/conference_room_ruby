Rails.application.routes.draw do
  root to: "welcome#index", as: "home"
  post "welcome/search_booking"

  get "login", to: "login#index", as: "login"
  get "signup", to: "users#new", as: "signup"

  resources :users, only: [:index, :show, :create, :destroy]
  resources :rooms, only: :show
  resources :booking
end
