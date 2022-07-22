class CreateDelivers < ActiveRecord::Migration[7.0]
  def change
    create_table :delivers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
