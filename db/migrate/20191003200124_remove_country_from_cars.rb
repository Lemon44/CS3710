class RemoveCountryFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :country, :string
  end
end
