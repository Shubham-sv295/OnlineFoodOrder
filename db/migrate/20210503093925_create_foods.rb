class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.text :description 
      t.belongs_to :restaurant
      t.integer :price
      t.integer :food_catlog
      t.boolean :status, default: 0
      t.timestamps
    end
  end
end
