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

ActiveRecord::Schema.define(version: 20140813020216) do

  create_table "doctors", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "facilities_provider"
    t.integer  "hospital_id"
    t.string   "healthcare_recipient"
    t.integer  "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "healthcare_recipient_id"
    t.string   "healthcare_recipient_type"
  end

  create_table "hospitals", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "beds"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medications", force: true do |t|
    t.string   "description"
    t.string   "instructions"
    t.string   "patient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "patients", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "malady"
    t.string   "gender"
    t.date     "date_of_birth"
    t.string   "workflow_state"
    t.string   "facilities_provider"
    t.integer  "hospital_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "facilities_provider_id"
    t.string   "facilities_provider_type"
  end

end
