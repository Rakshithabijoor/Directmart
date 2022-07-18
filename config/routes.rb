Rails.application.routes.draw do
  
  root "home#index"
  get "home/placed_product"
  resources :products
  resources :order_items
  resource :cards,only:[:show]
  devise_for :users

end
