class CreatePlacedOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :placed_orders do |t|
        t.belongs_to :restaurant
        t.belongs_to :user
        t.belongs_to :address
        t.integer :gross_amount
        t.integer :discount
        t.integer :net_amount
        t.integer :payment_mode
        t.integer :payment_status, default: 0
        t.integer :status, default: 0
      t.timestamps
    end
  end
end
