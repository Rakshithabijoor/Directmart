class HistorysController < ApplicationController
  before_action :authenticate_user!
  def orderhistory
    
    @orders = Order.where(user_id: current_user.id)
    
  end  


end