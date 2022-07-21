class RemoveDeliveyAddressToOrders < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :delivery_address
  end
end
