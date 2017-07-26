class AddWeightinToFruits < ActiveRecord::Migration
  def change
    add_column :fruits, :weightin, :string
  end
end
