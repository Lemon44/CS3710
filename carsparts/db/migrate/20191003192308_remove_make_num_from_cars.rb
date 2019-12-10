class RemoveMakeNumFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :make_num, :integer
  end
end
