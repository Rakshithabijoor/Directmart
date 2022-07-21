class UpdateIsshippedIsdeliveredIsdismissedToOrders < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :is_shipped, :boolean,default: false
    change_column :orders, :is_delivered, :boolean,default: false
    change_column :orders, :is_dismissed, :boolean,default: false
  end
end
