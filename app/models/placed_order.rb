class PlacedOrder < ApplicationRecord
  has_many :orders
  enum status: [:placed, :in_review, :confirm, :prepare, :out_for_delivery, :delivered]
  enum payment_mode: [:cash, :paytm, :google_pay, :phone_pe, :amazon_pay, :gift_card, :card]
  enum payment_status: [:incomplete, :done]
  has_many :comments
end
