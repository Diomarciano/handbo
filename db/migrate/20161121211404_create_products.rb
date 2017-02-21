class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :item
      t.string :subitem
      t.binary :image
      t.datetime :from
      t.datetime :until
      t.decimal :price
      t.string :description
      t.string :stadt
      t.attachment :image

      t.timestamps null: false
    end
  end
end
