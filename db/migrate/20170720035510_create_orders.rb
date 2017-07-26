class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.boolean :Status
      t.string :Buyername
      t.integer :Buyernumber
      t.string :Buyeraddress
      t.references :cart, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
