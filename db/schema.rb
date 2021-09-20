# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_20_213426) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jwt_denylist", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.index ["jti"], name: "index_jwt_denylist_on_jti"
  end

  create_table "movie_streaming_services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recommendation_tag_joins", force: :cascade do |t|
    t.integer "recommendation_id"
    t.integer "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "added_by_id"
    t.index ["added_by_id"], name: "index_recommendation_tag_joins_on_added_by_id"
  end

  create_table "recommendations", force: :cascade do |t|
    t.string "title"
    t.string "medium"
    t.string "youtube_link"
    t.string "spotify_link"
    t.string "apple_music_link"
    t.string "soundcloud_link"
    t.string "bandcamp_link"
    t.integer "recommended_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "has_orion_seen"
    t.string "ernest_rating"
    t.string "do_journeys_cats_hate"
    t.string "colorization"
    t.string "available_on"
    t.string "imdb_id"
    t.integer "year"
    t.string "trailer_link"
    t.string "image"
  end

  create_table "season_recommendation_joins", force: :cascade do |t|
    t.integer "season_id"
    t.integer "recommendation_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "seasons", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_recommendation_joins", force: :cascade do |t|
    t.integer "user_id"
    t.integer "recommendation_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_recommendation_rankings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "recommendation_id"
    t.string "rank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "seen_status"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "username"
    t.string "image"
    t.string "discord_username"
    t.boolean "allow_password_change", default: true, null: false
    t.string "music_streaming_preference", default: "spotify"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "recommendation_tag_joins", "users", column: "added_by_id"
end
