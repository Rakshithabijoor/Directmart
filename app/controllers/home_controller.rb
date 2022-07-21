class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @products = Product.all
    
  end
  def cart
  end
  def placed_product
    @products = Product.all
     @orderitems = OrderItem.all
     @orders = Order.all
     @users=User.all
    
     #@products = Product.where(user_id: current_user.id)
     #@cois = OrderItem.where(product_id: @product.id)
     #@orders = Order.where(id: 58)
    #@orderitems = OrderItem.all
    #we need order_id, user_id, is_shipped, is_delivered, is_dismissed
  end 

  def customer_detail
    @users=User.all

  end  

end
