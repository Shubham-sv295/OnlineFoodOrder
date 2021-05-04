class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.belongs_to :placed_order
      t.belongs_to :food
      t.integer :qty
      t.integer :price
      t.integer :amount
      t.timestamps
    end
  end
end
