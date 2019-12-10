class AddMakeToParts < ActiveRecord::Migration[5.2]
  def change
    add_reference :parts, :make, foreign_key: true
  end
end
