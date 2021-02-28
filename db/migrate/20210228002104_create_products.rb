class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.string :category
      t.string :ndc
      t.integer :qty
      t.integer :price, null: false
      t.string :instructions

      t.timestamps
    end
  end
end
