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

ActiveRecord::Schema.define(version: 2019_07_29_042125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bids", force: :cascade do |t|
    t.bigint "job_id"
    t.integer "bartender_id"
    t.float "amount"
    t.boolean "approved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "content"
    t.index ["job_id"], name: "index_bids_on_job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.float "amount"
    t.text "content"
    t.string "address"
    t.integer "employer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "bartender"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "star_rating"
    t.string "title"
    t.text "content"
    t.integer "reviewed_id"
    t.integer "reviewer_id"
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

  add_foreign_key "bids", "jobs"
  add_foreign_key "profiles", "users"
end
