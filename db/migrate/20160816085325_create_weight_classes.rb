class CreateWeightClasses < ActiveRecord::Migration
  def change
    create_table :weight_classes, id: false do |t|
      t.integer :weight_class_id
      t.decimal :value

      t.timestamps null: false
    end
  end
end
