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

ActiveRecord::Schema.define(version: 20140607162955) do

  create_table "events", force: true do |t|
    t.string   "game"
    t.date     "date"
    t.time     "game_time"
    t.integer  "home_team"
    t.integer  "away_team"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "play_responses", force: true do |t|
    t.integer  "play_id"
    t.integer  "player_id"
    t.integer  "user_id"
    t.boolean  "player_responible"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "player_name"
    t.integer  "player_team"
    t.string   "player_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plays", force: true do |t|
    t.integer  "event_id"
    t.integer  "player_id"
    t.string   "play_type"
    t.integer  "quarter_play_occured"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "city"
    t.string   "team_name"
    t.string   "team_logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
