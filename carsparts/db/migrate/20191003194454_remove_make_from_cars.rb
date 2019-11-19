class RemoveMakeFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :make, :string
  end
end
