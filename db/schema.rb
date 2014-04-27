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

ActiveRecord::Schema.define(version: 20140427191307) do

  create_table "appointments", force: true do |t|
    t.integer  "ApptID"
    t.integer  "clientID"
    t.integer  "trainerID"
    t.integer  "locationID"
    t.date     "apptDate"
    t.time     "apptTime"
    t.string   "apptType"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cardios", force: true do |t|
    t.string   "exerciseType"
    t.float    "minutesPerMile"
    t.integer  "exerciseLevel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.integer  "ClientID"
    t.string   "ClientName"
    t.string   "ClientAddress"
    t.integer  "creditCardNo"
    t.string   "emergencyContact"
    t.datetime "startdate"
    t.integer  "appointmentCount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exercises", force: true do |t|
    t.integer  "exerciseID"
    t.string   "exerciseType"
    t.string   "exerciseName"
    t.string   "muscleGroup"
    t.string   "equipment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fitness_metrics", force: true do |t|
    t.integer  "metricsID"
    t.integer  "clientID"
    t.integer  "exerciseID"
    t.date     "metricsDate"
    t.float    "weight"
    t.integer  "Age"
    t.float    "height"
    t.string   "sex"
    t.float    "fatPercent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flexibilities", force: true do |t|
    t.string   "exerciseType"
    t.float    "stretchDistance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.integer  "locationID"
    t.string   "LocationAddress"
    t.string   "LocationPhone"
    t.boolean  "Outdoor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"

  create_table "payments", force: true do |t|
    t.integer  "paymentID"
    t.datetime "paymentDate"
    t.float    "paymentAmount"
    t.string   "paymentMethod"
    t.integer  "invoiceID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "strengths", force: true do |t|
    t.string   "exerciseType"
    t.integer  "maxRepetitions"
    t.float    "exerciseWeight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trainers", force: true do |t|
    t.integer  "trainerID"
    t.string   "trainerAddress"
    t.string   "trainerPhone"
    t.string   "trainerEmail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
