class CreateOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_items do |t|
      t.integer :quatity, null: false, default: 0
      t.integer :price, null: false

      t.timestamps
    end
  end
end
