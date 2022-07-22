class ShipsController < ApplicationController
  def create
    @ship=current_user.ships.new(ship_params)
    @ship.save
    redirect_to home_placed_product_path
      
  end  

private


def ship_params
  params.require(:ship).permit(:order_id)
end


end

