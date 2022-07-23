class DeliversController < ApplicationController
  def create
    @deliver=current_user.delivers.new(deliver_params)
    @deliver.save
    redirect_to home_placed_product_path
      
  end  

private


def deliver_params
  params.require(:deliver).permit(:order_id,:product_id)
end
end
