class AddReferenceToDeliversForProduct < ActiveRecord::Migration[7.0]
  def change
    add_reference   :delivers, :product, foreign_key: true
  end
end
