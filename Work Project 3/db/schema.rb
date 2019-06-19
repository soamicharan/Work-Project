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

ActiveRecord::Schema.define(version: 2019_06_19_143141) do

  create_table "candidate_details", force: :cascade do |t|
    t.integer "s_no"
    t.string "src_reg"
    t.string "zone"
    t.date "DOR"
    t.string "reg_no"
    t.string "name"
    t.string "gender"
    t.integer "age"
    t.text "address"
    t.string "branch"
    t.string "email"
    t.integer "contact_no"
    t.string "state"
    t.string "qualification"
    t.string "specialization"
    t.text "experience"
    t.integer "remark_mobility"
    t.date "DOC"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_no"], name: "index_candidate_details_on_contact_no", unique: true
    t.index ["email"], name: "index_candidate_details_on_email", unique: true
    t.index ["s_no"], name: "index_candidate_details_on_s_no", unique: true
  end

  create_table "login_data", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["username"], name: "index_login_data_on_username", unique: true
  end

end
