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

ActiveRecord::Schema.define(version: 2018_12_15_193054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "highschool", default: "", null: false
    t.integer "graduation_year", default: 2019, null: false
    t.integer "age", default: 17, null: false
    t.date "birthday", null: false
    t.string "foot", default: "right", null: false
    t.string "nationality", default: "", null: false
    t.string "sex", default: "", null: false
    t.integer "highschool_goals"
    t.integer "highschool_assists"
    t.integer "highschool_position"
    t.string "state", default: "", null: false
    t.string "city", default: "", null: false
    t.string "street_address", default: "", null: false
    t.string "phone_number", default: "", null: false
    t.string "club_name", default: "", null: false
    t.integer "club_goals"
    t.integer "club_assists"
    t.integer "club_position"
    t.string "height", default: "", null: false
    t.integer "weight"
    t.string "highlight_video_link"
    t.string "full_game_link"
    t.integer "sat_score"
    t.integer "act_score"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_players_on_email", unique: true
    t.index ["reset_password_token"], name: "index_players_on_reset_password_token", unique: true
  end

end
