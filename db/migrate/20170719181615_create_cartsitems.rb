class CreateCartsitems < ActiveRecord::Migration
  def change
    create_table :cartsitems do |t|
      t.string :item
      t.integer :amount
      t.integer :quantity
      t.references :user, index: true, foreign_key: true
      t.references :fruit, index: true, foreign_key: true
      t.references :vegetable, index: true, foreign_key: true
      t.references :cart, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
