class CreateVegetables < ActiveRecord::Migration
  def change
    create_table :vegetables do |t|
      t.string :name
      t.integer :rate
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
