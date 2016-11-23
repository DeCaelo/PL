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

ActiveRecord::Schema.define(version: 20161123105833) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employee_organizations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["organization_id"], name: "index_employee_organizations_on_organization_id", using: :btree
    t.index ["user_id"], name: "index_employee_organizations_on_user_id", using: :btree
  end

  create_table "employees", force: :cascade do |t|
    t.string   "role"
    t.integer  "user_id"
    t.integer  "shop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_employees_on_shop_id", using: :btree
    t.index ["user_id"], name: "index_employees_on_user_id", using: :btree
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plannings", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "shop_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_plannings_on_shop_id", using: :btree
    t.index ["user_id"], name: "index_plannings_on_user_id", using: :btree
  end

  create_table "shifts", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "job_id"
    t.integer  "planning_id"
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["job_id"], name: "index_shifts_on_job_id", using: :btree
    t.index ["planning_id"], name: "index_shifts_on_planning_id", using: :btree
    t.index ["user_id"], name: "index_shifts_on_user_id", using: :btree
  end

  create_table "shops", force: :cascade do |t|
    t.string   "name"
    t.integer  "opening_time"
    t.integer  "closing_time"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "employee_organizations", "organizations"
  add_foreign_key "employee_organizations", "users"
  add_foreign_key "employees", "shops"
  add_foreign_key "employees", "users"
  add_foreign_key "plannings", "shops"
  add_foreign_key "plannings", "users"
  add_foreign_key "shifts", "jobs"
  add_foreign_key "shifts", "plannings"
  add_foreign_key "shifts", "users"
end
