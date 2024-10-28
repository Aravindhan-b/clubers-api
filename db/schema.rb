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

ActiveRecord::Schema[7.1].define(version: 2024_10_28_204723) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "club_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "club_drinks", force: :cascade do |t|
    t.bigint "club_id", null: false
    t.bigint "drink_id", null: false
    t.string "ingredients"
    t.integer "price"
    t.integer "discount"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "signature"
    t.index ["club_id"], name: "index_club_drinks_on_club_id"
    t.index ["drink_id"], name: "index_club_drinks_on_drink_id"
  end

  create_table "club_foods", force: :cascade do |t|
    t.bigint "club_id", null: false
    t.bigint "food_id", null: false
    t.integer "price"
    t.integer "discount"
    t.boolean "active"
    t.string "ingredients"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id"], name: "index_club_foods_on_club_id"
    t.index ["food_id"], name: "index_club_foods_on_food_id"
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.string "owner_name"
    t.string "address"
    t.string "city"
    t.string "near_by_landmark"
    t.integer "stag_entry"
    t.integer "couple_entry"
    t.integer "ladies_entry"
    t.boolean "active"
    t.integer "price_per_person"
    t.string "contact_number"
    t.integer "discount"
    t.datetime "opening_time"
    t.datetime "closing_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "resident_dj_id", null: false
    t.bigint "occation_id", null: false
    t.string "category"
    t.index ["occation_id"], name: "index_clubs_on_occation_id"
    t.index ["resident_dj_id"], name: "index_clubs_on_resident_dj_id"
  end

  create_table "djs", force: :cascade do |t|
    t.string "name"
    t.string "genre", default: [], array: true
    t.boolean "active"
    t.string "contact_number"
    t.integer "price_per_hour"
    t.string "address"
    t.string "availablity_hour"
    t.string "availablity_days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drinks", force: :cascade do |t|
    t.string "name"
    t.string "ingredients"
    t.integer "price"
    t.integer "discount"
    t.boolean "active"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.boolean "veg"
    t.string "style"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "category"
  end

  create_table "occations", force: :cascade do |t|
    t.string "name"
    t.integer "special_discounts"
    t.string "special_discount_for"
    t.string "genre", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "club_id", null: false
    t.index ["club_id"], name: "index_occations_on_club_id"
  end

  create_table "signature_dishes", force: :cascade do |t|
    t.string "name"
    t.string "style"
    t.float "rating"
    t.integer "price"
    t.integer "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "signature_drinks", force: :cascade do |t|
    t.string "name"
    t.string "ingredients"
    t.string "types", default: [], array: true
    t.integer "price"
    t.integer "discount"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "club_drinks", "clubs"
  add_foreign_key "club_drinks", "drinks"
  add_foreign_key "club_foods", "clubs"
  add_foreign_key "club_foods", "foods"
  add_foreign_key "clubs", "djs", column: "resident_dj_id"
  add_foreign_key "clubs", "occations"
  add_foreign_key "occations", "clubs"
end
