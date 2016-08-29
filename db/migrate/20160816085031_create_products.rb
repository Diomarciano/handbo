class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products, id: false  do |t|
      t.primary_key :product_id
      t.string :sku
      t.integer :quantity
      t.string :image
      t.decimal :price
      t.integer :shipping
      t.decimal :weight
      t.integer :weight_class_id
      t.decimal :length
      t.decimal :width
      t.decimal :height
      t.string :length_class_id
      t.integer :status
      t.integer :viewed

      t.timestamps null: false
    end
  end
end
