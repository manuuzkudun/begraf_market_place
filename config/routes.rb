Rails.application.routes.draw do

  devise_for :users
  resources :product_categories, only: [:index, :show]
  resources :offers, only: [:index]
  resources :image_upload, only: [:new]
  resources :order_products, only: [:create, :destroy]
  resource :cart, only: [:show]
  root to: 'product_categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
