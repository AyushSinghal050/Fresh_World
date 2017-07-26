class AddWeightToVegetables < ActiveRecord::Migration
  def change
    add_column :vegetables, :weight, :integer
  end
end
