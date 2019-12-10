class RemoveMakeNumFromParts < ActiveRecord::Migration[5.2]
  def change
    remove_column :parts, :make_num, :integer
  end
end
