class AddDeliveyAddressToOrderItems < ActiveRecord::Migration[7.0]
  def change
    add_column :order_items, :delivery_address, :string
  end
end
