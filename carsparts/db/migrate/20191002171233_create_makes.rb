class CreateMakes < ActiveRecord::Migration[5.2]
  def change
    create_table :makes do |t|
      t.string :model_name
      t.string :country
      t.references :car, foreign_key: true

      t.timestamps
    end
  end
end
