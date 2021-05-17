class AddColumnToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :url, :string
  end
end
