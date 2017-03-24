Rails.application.routes.draw do


  get 'order_products/index'

  get 'order_products/create'

  get 'order_products/destroy'

  devise_for :users

  resources :product_categories, only: [:index, :show]
  post '/offers', to: "offers#find_offers"
  root to: 'product_categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
