class CreateBowls < ActiveRecord::Migration[5.1]
  def change
    create_table :bowls do |t|
      t.integer :price
      t.string :broth
      t.string :noodle
      t.string :protein
      t.boolean :is_veg
      t.string :title
      t.text :review
      t.string :img_url
      t.references :restaurant
      t.timestamps
    end
  end
end
