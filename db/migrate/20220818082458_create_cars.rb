class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :price
      t.string :model
      t.boolean :is_available

      t.timestamps
    end
  end
end
