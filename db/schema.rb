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

ActiveRecord::Schema.define(version: 2018_11_27_155314) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feedbacks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "pitch_id"
    t.bigint "user_id"
    t.integer "quality"
    t.integer "clarity"
    t.integer "pace"
    t.integer "body_language"
    t.integer "language"
    t.integer "value"
    t.string "quality_comment"
    t.string "clarity_comment"
    t.string "pace_comment"
    t.string "body_language_comment"
    t.string "language_comment"
    t.string "value_comment"
    t.string "comment"
    t.index ["pitch_id"], name: "index_feedbacks_on_pitch_id"
    t.index ["user_id"], name: "index_feedbacks_on_user_id"
  end

  create_table "masterpitches", force: :cascade do |t|
    t.string "presenter_name"
    t.integer "duration"
    t.string "target"
    t.string "video_url_reference"
    t.text "transcript"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "topic"
    t.string "video_reference_url"
  end

  create_table "pitches", force: :cascade do |t|
    t.string "name"
    t.string "topic"
    t.string "duration"
    t.string "target"
    t.text "transcript"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "masterpitch_id"
    t.index ["masterpitch_id"], name: "index_pitches_on_masterpitch_id"
    t.index ["user_id"], name: "index_pitches_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "description"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "feedbacks", "pitches"
  add_foreign_key "feedbacks", "users"
  add_foreign_key "pitches", "masterpitches"
  add_foreign_key "pitches", "users"
end
