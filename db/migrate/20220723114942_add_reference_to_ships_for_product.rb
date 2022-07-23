class AddReferenceToShipsForProduct < ActiveRecord::Migration[7.0]
  def change
    add_reference   :ships, :product, foreign_key: true
  end
end
