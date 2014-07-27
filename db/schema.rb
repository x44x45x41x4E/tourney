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

ActiveRecord::Schema.define(version: 20140726233552) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: true do |t|
    t.string   "board_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cards", force: true do |t|
    t.string   "card_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "game_modes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "game_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.string   "name"
    t.integer  "game_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "games", ["game_type_id"], name: "index_games_on_game_type_id", using: :btree

  create_table "messagers", force: true do |t|
    t.string   "message_type"
    t.integer  "user_id"
    t.string   "shortcode"
    t.string   "message_id"
    t.text     "message"
    t.string   "client_id"
    t.string   "secret_key"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "messagers", ["user_id"], name: "index_messagers_on_user_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles_users", id: false, force: true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "rsvp_stats", force: true do |t|
    t.string   "status"
    t.integer  "users_id"
    t.integer  "tourneys_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rsvp_stats", ["tourneys_id"], name: "index_rsvp_stats_on_tourneys_id", using: :btree
  add_index "rsvp_stats", ["users_id"], name: "index_rsvp_stats_on_users_id", using: :btree

  create_table "schedules", force: true do |t|
    t.datetime "start_at"
    t.datetime "end_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sports", force: true do |t|
    t.string   "sport_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tourney_comments", force: true do |t|
    t.text     "message"
    t.integer  "user_id"
    t.integer  "tourney_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tourney_comments", ["tourney_id"], name: "index_tourney_comments_on_tourney_id", using: :btree
  add_index "tourney_comments", ["user_id"], name: "index_tourney_comments_on_user_id", using: :btree

  create_table "tourney_types", force: true do |t|
    t.string   "tourney_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tourneys", force: true do |t|
    t.string   "title"
    t.text     "desc"
    t.integer  "tourney_type_id"
    t.integer  "tourney_comment_id"
    t.integer  "tourney_comments_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "user_id"
    t.integer  "venue_id"
    t.integer  "game_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "game_mode_id"
    t.integer  "game_id"
    t.integer  "rsvp_stats_id"
  end

  add_index "tourneys", ["game_id"], name: "index_tourneys_on_game_id", using: :btree
  add_index "tourneys", ["game_mode_id"], name: "index_tourneys_on_game_mode_id", using: :btree
  add_index "tourneys", ["game_type_id"], name: "index_tourneys_on_game_type_id", using: :btree
  add_index "tourneys", ["rsvp_stats_id"], name: "index_tourneys_on_rsvp_stats_id", using: :btree
  add_index "tourneys", ["tourney_comment_id"], name: "index_tourneys_on_tourney_comment_id", using: :btree
  add_index "tourneys", ["tourney_comments_id"], name: "index_tourneys_on_tourney_comments_id", using: :btree
  add_index "tourneys", ["tourney_type_id"], name: "index_tourneys_on_tourney_type_id", using: :btree
  add_index "tourneys", ["user_id"], name: "index_tourneys_on_user_id", using: :btree
  add_index "tourneys", ["venue_id"], name: "index_tourneys_on_venue_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tourney_id"
    t.string   "first_name"
    t.integer  "roles_id"
    t.string   "last_name"
    t.string   "contact"
    t.text     "address"
    t.integer  "game_type_id"
    t.integer  "game_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["game_id"], name: "index_users_on_game_id", using: :btree
  add_index "users", ["game_type_id"], name: "index_users_on_game_type_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["roles_id"], name: "index_users_on_roles_id", using: :btree

  create_table "venues", force: true do |t|
    t.string   "venue_name"
    t.text     "venue_address"
    t.text     "venue_desc"
    t.float    "venue_lat"
    t.float    "venue_long"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "video_games", force: true do |t|
    t.string   "videogame_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
