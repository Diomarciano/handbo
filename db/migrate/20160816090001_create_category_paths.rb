class CreateCategoryPaths < ActiveRecord::Migration
  def change
    create_table :category_paths, id: false do |t|
      t.integer :category_id
      t.integer :path_id
      t.integer :level

      t.timestamps null: false
    end
  end
end
