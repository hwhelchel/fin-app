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

ActiveRecord::Schema.define(version: 20140505012638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "performances", force: true do |t|
    t.decimal  "shares_outstanding", precision: 12, scale: 2
    t.decimal  "net_earnings",       precision: 12, scale: 2
    t.decimal  "dividends_paid_out", precision: 12, scale: 2
    t.decimal  "equity_value",       precision: 12, scale: 2
    t.decimal  "pe",                 precision: 12, scale: 2
    t.integer  "year_id"
    t.integer  "security_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "securities", force: true do |t|
    t.string   "name",                                    null: false
    t.string   "ticker"
    t.decimal  "price",          precision: 12, scale: 2
    t.decimal  "long_term_debt", precision: 12, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "years", force: true do |t|
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
