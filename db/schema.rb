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

ActiveRecord::Schema.define(version: 2019_03_03_225214) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.bigint "songs_id"
    t.bigint "top100s_id"
    t.bigint "top100us_id"
    t.bigint "top100eurs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["songs_id"], name: "index_artists_on_songs_id"
    t.index ["top100eurs_id"], name: "index_artists_on_top100eurs_id"
    t.index ["top100s_id"], name: "index_artists_on_top100s_id"
    t.index ["top100us_id"], name: "index_artists_on_top100us_id"
  end

  create_table "charts", force: :cascade do |t|
    t.string "chart_name"
    t.bigint "songs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["songs_id"], name: "index_charts_on_songs_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.integer "Artist_id"
    t.bigint "artists_id"
    t.bigint "top100s_id"
    t.bigint "top100_us_id"
    t.bigint "top100_eurs_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artists_id"], name: "index_songs_on_artists_id"
    t.index ["top100_eurs_id"], name: "index_songs_on_top100_eurs_id"
    t.index ["top100_us_id"], name: "index_songs_on_top100_us_id"
    t.index ["top100s_id"], name: "index_songs_on_top100s_id"
  end

  create_table "top100eurs", force: :cascade do |t|
    t.integer "chart_id"
    t.integer "song_id"
    t.integer "artist_id"
    t.integer "rank"
    t.bigint "songs_id"
    t.bigint "artists_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artists_id"], name: "index_top100eurs_on_artists_id"
    t.index ["songs_id"], name: "index_top100eurs_on_songs_id"
  end

  create_table "top100s", force: :cascade do |t|
    t.integer "chart_id"
    t.integer "song_id"
    t.integer "artist_id"
    t.integer "rank"
    t.bigint "songs_id"
    t.bigint "artists_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artists_id"], name: "index_top100s_on_artists_id"
    t.index ["songs_id"], name: "index_top100s_on_songs_id"
  end

  create_table "top100us", force: :cascade do |t|
    t.integer "chart_id"
    t.integer "song_id"
    t.integer "artist_id"
    t.integer "rank"
    t.bigint "songs_id"
    t.bigint "artists_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artists_id"], name: "index_top100us_on_artists_id"
    t.index ["songs_id"], name: "index_top100us_on_songs_id"
  end

end
