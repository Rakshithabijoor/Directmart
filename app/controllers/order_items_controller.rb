class OrderItemsController < ApplicationController

    


   def create
    @order=current_order
    @order_item =@order.order_items.new(order_params)
    @order[:user_id]=current_user.id
    @order.save!
    
    session[:order_id]=@order.id
    
   end


def update
    @order=current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attribute(order_params)
    redirect_to root_path
end



def destroy
  @order=current_order
  @order_item = @order.order_items.find(params[:id])
  @order_item.destroy
  @order_items = current_order.order_items
end



private

def order_params
  params.require(:order_item).permit(:product_id,:quantity,:user_id)

end




end  