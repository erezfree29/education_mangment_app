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

ActiveRecord::Schema.define(version: 2019_08_17_230938) do

  create_table "institutions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "overtstaffs_id"
    t.index ["overtstaffs_id"], name: "index_institutions_on_overtstaffs_id"
  end

  create_table "institutionstaffs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "email_confirmed"
    t.string "confirmation_token"
    t.string "first_name"
    t.string "last_name"
    t.integer "institution_id"
    t.index ["email"], name: "index_institutionstaffs_on_email", unique: true
    t.index ["institution_id"], name: "index_institutionstaffs_on_institution_id"
    t.index ["reset_password_token"], name: "index_institutionstaffs_on_reset_password_token", unique: true
  end

  create_table "overtstaffs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "email_confirmed"
    t.string "confirmation_token"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_overtstaffs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_overtstaffs_on_reset_password_token", unique: true
  end

end
