class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
      t.text :email

      t.timestamps null: false
    end
  end
end
