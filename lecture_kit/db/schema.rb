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

ActiveRecord::Schema.define(version: 2021_08_29_154236) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
  end

  create_table "plant_categories", force: :cascade do |t|
    t.integer "category_id"
    t.integer "plant_id"
  end

  create_table "plant_parenthoods", force: :cascade do |t|
    t.integer "plant_id"
    t.integer "plant_parent_id"
    t.integer "affection"
  end

  create_table "plant_parents", force: :cascade do |t|
    t.string "name"
    t.boolean "responsible"
    t.integer "age"
  end

  create_table "plants", force: :cascade do |t|
    t.string "species"
    t.string "color"
    t.datetime "bought"
    t.boolean "fussy"
  end

end
