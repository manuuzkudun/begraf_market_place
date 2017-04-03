Rails.application.routes.draw do

  devise_for :users
  resources :product_categories, only: [:index, :show]
  resources :offers, only: [:index]
  resources :image_upload, only: [:new]
  resources :order_products, only: [:create, :destroy]
  resource :cart, only: [:show]
  resources :checkout, only: [:index]
  root to: 'product_categories#index'
end
