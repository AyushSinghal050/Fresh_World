class CreateFruits < ActiveRecord::Migration
  def change
    create_table :fruits do |t|
      t.string :name
      t.integer :rate
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
