# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_03_132337) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "receiver_name"
    t.string "receiver_mobile_number"
    t.bigint "addressable_id"
    t.string "country", default: "India"
    t.string "state", default: "Madhya Pradesh"
    t.string "city", default: "Indore"
    t.integer "postal_code"
    t.integer "house_number"
    t.string "building_name"
    t.string "area"
    t.string "landmark"
    t.integer "address_type", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["addressable_id"], name: "index_addresses_on_addressable_id"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id"
    t.bigint "order_id"
    t.bigint "placed_order_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_comments_on_order_id"
    t.index ["placed_order_id"], name: "index_comments_on_placed_order_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "restaurant_id"
    t.integer "price"
    t.integer "food_catlog"
    t.boolean "status", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_foods_on_restaurant_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "placed_order_id"
    t.bigint "food_id"
    t.integer "qty"
    t.integer "price"
    t.integer "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["food_id"], name: "index_orders_on_food_id"
    t.index ["placed_order_id"], name: "index_orders_on_placed_order_id"
  end

  create_table "placed_orders", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.bigint "user_id"
    t.bigint "address_id"
    t.integer "gross_amount"
    t.integer "discount"
    t.integer "net_amount"
    t.integer "payment_mode"
    t.integer "payment_status", default: 0
    t.integer "status", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["address_id"], name: "index_placed_orders_on_address_id"
    t.index ["restaurant_id"], name: "index_placed_orders_on_restaurant_id"
    t.index ["user_id"], name: "index_placed_orders_on_user_id"
  end

  create_table "rating_and_reviews", force: :cascade do |t|
    t.string "review"
    t.integer "rating"
    t.bigint "restaurant_id"
    t.bigint "user_id"
    t.boolean "is_complaint"
    t.boolean "is_praise"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["restaurant_id"], name: "index_rating_and_reviews_on_restaurant_id"
    t.index ["user_id"], name: "index_rating_and_reviews_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "name", default: "", null: false
    t.string "mobile_number", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_restaurants_on_email", unique: true
    t.index ["reset_password_token"], name: "index_restaurants_on_reset_password_token", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "name", default: "", null: false
    t.string "mobile_number"
    t.integer "addresses_id"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["addresses_id"], name: "index_users_on_addresses_id"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["mobile_number"], name: "index_users_on_mobile_number", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
