class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :comment
      t.string :email
      t.references :review
      t.timestamps
    end
  end
end
