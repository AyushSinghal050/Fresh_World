class CreateCombos < ActiveRecord::Migration
  def change
    create_table :combos do |t|
      t.references :fruit, index: true, foreign_key: true
      t.references :vegetable, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
