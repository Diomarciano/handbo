class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :title
      t.string :judul

      t.timestamps null: false
    end
  end
end
