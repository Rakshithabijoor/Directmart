class RemoveDeliveyAddressFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :delivery_address, :string
  end
end
