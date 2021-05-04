class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :receiver_name
      t.string :receiver_mobile_number
      t.belongs_to :addressable 
      t.string :country, default: "India"
      t.string :state, default: "Madhya Pradesh"
      t.string :city, default: "Indore"
      t.integer :postal_code
      t.integer :house_number
      t.string :building_name
      t.string :area
      t.string :landmark
      t.integer :address_type, default:0
      t.timestamps
    end
  end
end