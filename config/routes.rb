Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'about', to: "about#index", as: :about

  get "sign_up", to: "registrations#new"

  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"

  post "sign_in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  root to: 'categories#index'

  resources :categories, only: [:index] do
    resources :products, only: [:index]
  end

  get '/cart', to: 'order_items#index'
  resources :order_items, path: '/cart/items'
end
