class OrderItem < ApplicationRecord
  belongs_to :order #, class_name: "Order", foreign_key: "order_id"
  belongs_to :product , class_name: "Product", foreign_key: "product_id"
 before_save :set_unit_price
 before_save :set_total


  def unit_price
    if persisted?
      self[:unit_price]
    else
      product.price
    end
  end
  
  def total
    unit_price * quantity
  end


  private
  
  def set_unit_price
    self[:unit_price] = unit_price
  end
  def set_total
    self[:total] = total*quantity
  end 

end
