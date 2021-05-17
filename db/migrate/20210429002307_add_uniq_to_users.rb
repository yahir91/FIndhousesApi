class AddUniqToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :name, :string
    remove_column :users, :email, :string
    add_column :users, :name, :string, unique: true
    add_column :users, :email, :string, unique: true
  end
end
