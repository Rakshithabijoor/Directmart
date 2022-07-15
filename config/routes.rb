Rails.application.routes.draw do
  root "home#index"
  get "home/cart"
  resources :products
  resources :line_items
  resources :carts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get 'products/add_to_cart/:id', to:
 
end
