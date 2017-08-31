class CreateToppings < ActiveRecord::Migration[5.1]
  def change
    create_table :toppings do |t|
      t.string :name
      t.timestamps null: false
      # I don't think you need to add null:false to t.timestamps. They will always
      # be created automatically when create / update
    end
  end
end
