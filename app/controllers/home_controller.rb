class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @products = Product.all
    
  end
        def cart
        end
      def placed_product
        @products = Product.all
        @orderitems = OrderItem.select('order_id, product_id').distinct
        #@orderitems = OrderItem.all
        @orders = Order.all
        @users=User.all
        @ships=Ship.all
        @delivers=Deliver.all
      end 

  def customer_detail
    @users=User.all

  end  

end
