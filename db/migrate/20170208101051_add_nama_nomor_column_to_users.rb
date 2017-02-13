class AddNamaNomorColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :nama, :string
    add_column :users, :nomor, :integer
  end
end
