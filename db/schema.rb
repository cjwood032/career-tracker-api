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

ActiveRecord::Schema.define(version: 2020_10_13_152824) do

  create_table "careers", force: :cascade do |t|
    t.string "title"
    t.string "company"
    t.string "location"
    t.date "date_added"
    t.string "link"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "company"
    t.string "job_title"
    t.datetime "date"
    t.string "requirements"
    t.string "job_description"
    t.string "notes"
    t.string "about_company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "reviews"
  end

  create_table "details", force: :cascade do |t|
    t.date "update_date"
    t.string "step"
    t.date "contact_date"
    t.string "contact_email"
    t.string "contact_name"
    t.string "contact_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "company"
    t.boolean "first_contact"
    t.string "action"
    t.string "method"
    t.string "referral"
    t.string "job_title"
    t.string "job_link"
    t.string "notes"
    t.string "complete"
    t.string "status"
    t.boolean "imported"
  end

end
