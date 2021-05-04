class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :addresses
  has_many :addresses, as: :addressable
   has_and_belongs_to_many :foods
   has_many :placed_orders
   has_many :comments
end
