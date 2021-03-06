class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.belongs_to :user
      t.belongs_to :order
      t.belongs_to :placed_order
      t.timestamps
    end
  end
end
