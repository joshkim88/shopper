class CreateProductVariants < ActiveRecord::Migration[6.1]
  def change
    create_table :product_variants do |t|
      t.string :title, null: false
      t.integer :price, null: false

      t.timestamps
    end
  end
end
