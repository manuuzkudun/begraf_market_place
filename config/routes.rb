Rails.application.routes.draw do



  devise_for :users

  resources :order_products, only: [:create, :index, :destroy, :update]
  resources :product_categories, only: [:index, :show]
  resource :cart, only: [:show]
  post '/offers', to: "offers#find_offers"
  root to: 'product_categories#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
