class RemoveCarIdFromMakes < ActiveRecord::Migration[5.2]
  def change
    remove_column :makes, :car_id, :foreign
    remove_column :makes, :key, :string
  end
end
