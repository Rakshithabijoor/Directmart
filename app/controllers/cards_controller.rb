class CardsController < ApplicationController
  before_action :set_order, only: %i[update]

  def show
      @order_items = current_order.order_items
      @orders= Order.all
      
  end 

   

  


  
  private
  
  def set_order
    @order = Order.find(params[:id])
  end

end
