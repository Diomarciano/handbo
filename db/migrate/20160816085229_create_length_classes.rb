class CreateLengthClasses < ActiveRecord::Migration
  def change
    create_table :length_classes do |t|
      t.integer :length_class_id
      t.decimal :value

      t.timestamps null: false
    end
  end
end
