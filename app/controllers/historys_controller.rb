class HistorysController < ApplicationController
  before_action :authenticate_user!
  def orderhistory
    
    @orders = Order.where(user_id: current_user.id)
    @products = Product.all
    @orderitems = OrderItem.select('order_id, product_id').distinct
    @users=User.all
    @ships=Ship.all
    @delivers=Deliver.all
  end  


end
