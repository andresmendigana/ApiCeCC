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

ActiveRecord::Schema.define(version: 2018_08_21_221809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.date "date_created"
    t.string "title"
    t.string "type"
    t.date "date_event"
    t.date "hour"
    t.string "short_description"
    t.string "description"
    t.decimal "organizers"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_activities_on_user_id"
  end

  create_table "histories", force: :cascade do |t|
    t.date "date_created"
    t.string "title"
    t.string "description"
    t.string "author"
    t.bigint "report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_histories_on_report_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "latitude"
    t.string "length"
    t.bigint "report_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["report_id"], name: "index_locations_on_report_id"
  end

  create_table "model_names", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizers", force: :cascade do |t|
    t.string "name"
    t.string "web"
    t.string "image"
    t.string "redes"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_organizers_on_activity_id"
  end

  create_table "reports", force: :cascade do |t|
    t.date "date_created"
    t.string "type"
    t.string "description"
    t.decimal "number"
    t.string "images"
    t.string "status"
    t.decimal "location"
    t.decimal "history"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reports_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "type"
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.decimal "phone"
    t.decimal "age"
    t.decimal "activity"
    t.decimal "reports"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "activities", "users"
  add_foreign_key "histories", "reports"
  add_foreign_key "locations", "reports"
  add_foreign_key "organizers", "activities"
  add_foreign_key "reports", "users"
end
