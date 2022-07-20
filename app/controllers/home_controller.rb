class HomeController < ApplicationController
  def index
  end
  def cart
  end
  def placed_product
     @products = Product.all
     @orders = Order.all
     @orderitems = OrderItem.all
     @users=User.all

     
  end 

end
