# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170808232449) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bowls", force: :cascade do |t|
    t.integer "price"
    t.string "broth"
    t.string "noodle"
    t.string "protein"
    t.boolean "is_veg"
    t.string "title"
    t.text "review"
    t.string "img_url"
    t.bigint "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["restaurant_id"], name: "index_bowls_on_restaurant_id"
    t.index ["user_id"], name: "index_bowls_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "name"
    t.text "comment"
    t.string "email"
    t.bigint "bowl_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["bowl_id"], name: "index_comments_on_bowl_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "bowl_id"
    t.index ["bowl_id"], name: "index_favorites_on_bowl_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "img_url"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topping_tags", force: :cascade do |t|
    t.bigint "bowl_id"
    t.bigint "topping_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bowl_id"], name: "index_topping_tags_on_bowl_id"
    t.index ["topping_id"], name: "index_topping_tags_on_topping_id"
  end

  create_table "toppings", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "city"
    t.text "bio"
    t.string "img_url"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bowls", "users"
  add_foreign_key "comments", "users"
  add_foreign_key "favorites", "bowls"
  add_foreign_key "favorites", "users"
  add_foreign_key "topping_tags", "bowls"
  add_foreign_key "topping_tags", "toppings"
end
