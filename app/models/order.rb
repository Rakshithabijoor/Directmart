class Order < ApplicationRecord
  has_many :order_items, class_name: "OrderItem", foreign_key: "order_id"
  has_many :ships
  has_many :delivers

  belongs_to :user , class_name: "User", foreign_key: "user_id"
  before_save :set_subtotal



  def subtotal1
      order_items.collect{|order_item| order_item.valid? ? order_item.unit_price * order_item.quantity : 0}.sum
      
  end

  private
  def set_subtotal
   self[:subtotal] = subtotal1
  end 



end
