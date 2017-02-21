class RemoveImageToProducts < ActiveRecord::Migration
  def change
    remove_column :products, :image, :binary
  end
end
