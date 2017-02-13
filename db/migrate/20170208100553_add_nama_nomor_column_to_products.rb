class AddNamaNomorColumnToProducts < ActiveRecord::Migration
  def change
    add_column :products, :nama, :string
    add_column :products, :nomor, :integer
  end
end
