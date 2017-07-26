class AddOrdernumberToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ordernumber, :integer
  end
end
