class CreateToppingTags < ActiveRecord::Migration[5.1]
  def change
    create_table :topping_tags do |t|
      t.references :bowl, index: true, foreign_key: true
      t.references :topping, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
