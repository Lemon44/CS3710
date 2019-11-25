class RemoveProductNumFromParts < ActiveRecord::Migration[5.2]
  def change
    remove_column :parts, :product_num, :integer
  end
end
