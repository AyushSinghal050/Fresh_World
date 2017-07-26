class AddCartnumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cartnumber, :integer
  end
end
