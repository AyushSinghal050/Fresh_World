class AddWeightinToVegetables < ActiveRecord::Migration
  def change
    add_column :vegetables, :weightin, :string
  end
end
