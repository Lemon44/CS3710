class AddNameToMakes < ActiveRecord::Migration[5.2]
  def change
    add_column :makes, :name, :string
  end
end
