class RemoveDeliveyAddressToOrderItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :order_items, :delivery_address
  end
end
