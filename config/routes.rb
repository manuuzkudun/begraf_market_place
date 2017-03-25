Rails.application.routes.draw do


  get 'carts/show'

  devise_for :users

  resources :order_products, only: [:create, :index, :destroy]
  resources :product_categories, only: [:index, :show]
  post '/offers', to: "offers#find_offers"
  root to: 'product_categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
