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

ActiveRecord::Schema.define(version: 2018_11_09_174508) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "histories", force: :cascade do |t|
    t.integer "schedule_id"
    t.decimal "hunter_cost"
    t.decimal "vehicle_cost"
    t.decimal "tax"
    t.decimal "total_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["schedule_id"], name: "index_histories_on_schedule_id"
  end

  create_table "hunters", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "location_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "hunter_id"
    t.integer "vehicle_id"
    t.integer "target_id"
    t.integer "location_id"
    t.decimal "total_cost"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hunter_id"], name: "index_schedules_on_hunter_id"
    t.index ["location_id"], name: "index_schedules_on_location_id"
    t.index ["target_id"], name: "index_schedules_on_target_id"
    t.index ["vehicle_id"], name: "index_schedules_on_vehicle_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.integer "hunter_id"
    t.integer "specie_id"
    t.decimal "modifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hunter_id"], name: "index_specialties_on_hunter_id"
    t.index ["specie_id"], name: "index_specialties_on_specie_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "specie_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "targets", force: :cascade do |t|
    t.integer "specie_id"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["specie_id"], name: "index_targets_on_specie_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name"
    t.string "vehicle_type"
    t.decimal "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
