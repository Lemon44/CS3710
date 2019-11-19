class RemoveModelNameFromMakes < ActiveRecord::Migration[5.2]
  def change
    remove_column :makes, :model_name, :string
  end
end
