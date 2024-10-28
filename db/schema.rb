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

ActiveRecord::Schema[7.1].define(version: 2024_05_19_113021) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  create_table "occations", force: :cascade do |t|
    t.string "name"
    t.integer "special_discounts"
    t.string "special_discount_for"
    t.string "genre", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

end
