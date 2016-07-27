class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.primary_key :category_id
      t.text :image
      t.integer :parent_id
      t.integer :status
      t.datetime :date_added
      t.datetime :date_modified

      t.timestamps null: false
    end
  end
end
