class AddDeliveyaddressToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :delivery_address, :string
  end
end
