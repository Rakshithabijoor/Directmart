Rails.application.routes.draw do
  
  root "home#index"
  
  resources :products
  resources :order_items
  resource :cards,only:[:show]
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #  get 'products/add_to_cart/:id', to:'products#add_to_cart',as: 'add_to_cart'
  # delete 'products/remove_from_cart/:id', to:'products#remove_from_cart',as: 'remove_from_cart'
end
