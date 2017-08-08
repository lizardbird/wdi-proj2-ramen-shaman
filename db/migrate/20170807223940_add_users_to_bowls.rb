class AddUsersToBowls < ActiveRecord::Migration[5.1]
  def change
        add_reference :bowls, :user, foreign_key: true
  end
end
