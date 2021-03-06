# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150826233135) do

  create_table "atrisks", force: :cascade do |t|
    t.integer  "month"
    t.integer  "year"
    t.integer  "client_id"
    t.string   "exec_sponsor_status"
    t.string   "last_contact_status"
    t.string   "payment_status"
    t.string   "data_status"
    t.string   "implementation_status"
    t.string   "current_status"
    t.string   "current_reason"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "client_informations", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "last_edited_by"
    t.date     "last_contact_date"
    t.string   "exec_sponsor"
    t.date     "termination_notice"
    t.integer  "payment_status_id"
    t.integer  "balance"
    t.date     "reactivation_date"
    t.date     "expiration_date"
    t.integer  "annual_fee"
    t.integer  "sales_rep_id"
    t.string   "contract_type"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "client_onboarding_statuses", force: :cascade do |t|
    t.integer  "last_edited_by"
    t.text     "notes"
    t.integer  "impl_status_id"
    t.date     "certification_date"
    t.date     "kickoff_date"
    t.integer  "client_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "clients", force: :cascade do |t|
    t.boolean  "active"
    t.integer  "last_edited_by"
    t.string   "clientname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_statuses", force: :cascade do |t|
    t.integer  "last_edited_by"
    t.integer  "months_late"
    t.integer  "db_type"
    t.integer  "month"
    t.integer  "year"
    t.integer  "client_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "impl_statuses", force: :cascade do |t|
    t.boolean  "active"
    t.integer  "last_edited_by"
    t.string   "status_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "payment_statuses", force: :cascade do |t|
    t.boolean  "active"
    t.integer  "last_edited_by"
    t.string   "status_name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "sales_reps", force: :cascade do |t|
    t.boolean  "active"
    t.integer  "last_edited_by"
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "user_roles", force: :cascade do |t|
    t.text     "role_description"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "last_name"
    t.string   "first_name"
    t.integer  "user_role_id"
    t.string   "user_password"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
