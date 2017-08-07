class CreateBowls < ActiveRecord::Migration[5.1]
  def change
    create_table :bowls do |t|
      t.integer :price
      t.string :broth
      t.string :noodle
      t.string :protein
      t.boolean :is_veg
      t.references :review
      t.timestamps
    end
  end
end
