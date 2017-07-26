class AddWeightToFruits < ActiveRecord::Migration
  def change
    add_column :fruits, :weight, :integer
  end
end
