class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :telephone
      t.string :address
      t.string :web

      t.timestamps null: false
    end
  end
end
