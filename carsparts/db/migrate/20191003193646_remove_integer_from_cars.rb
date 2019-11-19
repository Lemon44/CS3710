class RemoveIntegerFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :integer, :integer
  end
end
