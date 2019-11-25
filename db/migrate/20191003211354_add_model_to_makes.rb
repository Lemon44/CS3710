class AddModelToMakes < ActiveRecord::Migration[5.2]
  def change
    add_column :makes, :model, :string
  end
end
