class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :title
      t.string :description
      t.string :rent

      t.timestamps
    end
  end
end
