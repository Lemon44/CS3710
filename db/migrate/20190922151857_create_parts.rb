class CreateParts < ActiveRecord::Migration[5.2]
  def change
    create_table :parts do |t|
      t.string :name
      t.integer :make_num
      t.integer :product_num

      t.timestamps
    end
  end
end
