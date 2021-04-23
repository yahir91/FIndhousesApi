class ChangeColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :email, :string
    remove_column :users, :username, :string
  end
end
