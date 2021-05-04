class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true
  has_many :placed_orders
  enum address_type: [:home,:office,:other]
  validates :receiver_name, presence: true, format: { with: /\A[a-zA-Z\s]+\z/,
    message: "only allows letters" }
  validates :receiver_mobile_number, length: { is: 10}, numericality: { only_integer: true}
end
