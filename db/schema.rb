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

ActiveRecord::Schema.define(version: 20141021191434) do

  create_table "obsahs", force: true do |t|
    t.string   "pouzivatel"
    t.string   "priradene_profesie"
    t.string   "priradene_obory"
    t.string   "nazov_obsahu"
    t.text     "vzdelavaci_obsah"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "odbors", force: true do |t|
    t.integer  "cislo"
    t.string   "nazov"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pouzivatels", force: true do |t|
    t.string   "nick"
    t.string   "heslo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profesia", force: true do |t|
    t.integer  "profesia_cislo"
    t.string   "nazov_profesie"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end