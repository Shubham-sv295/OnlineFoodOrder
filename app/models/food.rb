class Food < ApplicationRecord
  enum food_catlog: [:desserts, :sweets, :snacks, :chaat, :pizzas, :bakery, :street_food, :chinese, :beverages, :ice_creams, :healthy_food, :veggies, :non_veg, :indian_main_course, :south_indian]
  enum status: [:available, :unavailable]
   has_and_belongs_to_many :users
end
