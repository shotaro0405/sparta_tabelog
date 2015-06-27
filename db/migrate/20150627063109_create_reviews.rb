class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :score, null: false
      t.string :title, null: false
      t.text :body, null: false
      t.references :restaurant, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :reviews, [:restaurant_id, :user_id], unique: true
  end
end
