# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100728223604) do

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "abbreviation"
  end

  create_table "locals", :force => true do |t|
    t.string   "name"
    t.string   "number"
    t.date     "chartered"
    t.text     "jurisdiction"
    t.string   "website"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state_province"
    t.string   "postal_code"
    t.integer  "country_code"
    t.string   "phone_primary"
    t.string   "phone2"
    t.string   "phone3"
    t.string   "city_state_title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email2"
    t.string   "email3"
    t.integer  "sort_num"
  end

  create_table "musicians", :force => true do |t|
    t.integer  "ssn"
    t.date     "birthdate"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "mi"
    t.string   "email"
    t.string   "phone_home"
    t.string   "phone_cell"
    t.string   "phone_work"
    t.string   "address"
    t.string   "city"
    t.string   "state_province"
    t.string   "postal_code"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "suffix"
    t.string   "stage_lastname"
    t.string   "stage_firstname"
    t.integer  "primary_phone_choice"
  end

  create_table "state_provinces", :force => true do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
