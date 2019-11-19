class AddYearToMakes < ActiveRecord::Migration[5.2]
  def change
    add_column :makes, :year, :integer
  end
end
