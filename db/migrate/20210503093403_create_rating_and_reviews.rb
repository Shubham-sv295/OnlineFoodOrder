class CreateRatingAndReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :rating_and_reviews do |t|
      t.string :review
      t.integer :rating
      t.belongs_to :restaurant
      t.belongs_to :user
      t.boolean :is_complaint
      t.boolean :is_praise
      t.timestamps
    end
  end
end
