Rails.application.routes.draw do
  
  root "home#index"
  get "home/placed_product"
  get "home/customer_detail"
  get "historys/orderhistory"
  resources :products
  resources :order_items
  resources :ships,only:[:create]
  resources :delivers,only:[:create]
  resource :cards,only:[:show]
  devise_for :users

end
