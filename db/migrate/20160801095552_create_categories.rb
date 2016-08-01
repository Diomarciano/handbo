class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories, id: false do |t|
      t.primary_key :category_id
      t.text :image
      t.integer :parent_id
      t.integer :status

      t.timestamps null: false
    end
  end
end
