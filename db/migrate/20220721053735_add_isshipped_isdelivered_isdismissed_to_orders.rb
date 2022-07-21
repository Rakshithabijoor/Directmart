class AddIsshippedIsdeliveredIsdismissedToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :is_shipped, :integer
    add_column :orders, :is_delivered, :integer
    add_column :orders, :is_dismissed, :integer
  end
end
