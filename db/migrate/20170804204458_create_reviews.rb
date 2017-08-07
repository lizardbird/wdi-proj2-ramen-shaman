class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :price
      t.string :broth
      t.string :noodle
      t.string :protein
      t.boolean :is_veg
      t.string :title
      t.text :content
      t.string :img_url
      t.timestamps
    end
  end
end
