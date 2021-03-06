Rails.application.routes.draw do
  devise_for :users
  resources :product_categories, only: [:index], path: 'products'
  resources :product_properties, only: [:index]
  resources :offers, only: [:index]
  resources :image_upload, only: [:new]
  resources :order_products, only: [:create, :destroy]
  resource :cart, only: [:show]
  resources :payments, only: [:new, :create, :show]
  root to: 'pages#home'
end
