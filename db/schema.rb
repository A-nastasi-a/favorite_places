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

ActiveRecord::Schema.define(version: 2022_05_06_084816) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "text", null: false
    t.datetime "date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "place_id"
    t.index ["place_id"], name: "index_comments_on_place_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "status", null: false
    t.string "type", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "entity_type", null: false
    t.bigint "entity_id", null: false
    t.string "image_url", null: false
    t.text "title", null: false
    t.text "alt", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "place_likes", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "place_id"
    t.index ["place_id"], name: "index_place_likes_on_place_id"
    t.index ["user_id"], name: "index_place_likes_on_user_id"
  end

  create_table "places", force: :cascade do |t|
    t.float "latitude", null: false
    t.float "longitude", null: false
    t.integer "likes", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_places_on_user_id"
  end

  create_table "subscribers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "subscriber_id"
    t.index ["subscriber_id"], name: "index_subscribers_on_subscriber_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.date "date_of_birth", null: false
    t.datetime "date_of_registration", null: false
    t.string "sex", null: false
    t.string "password", null: false
    t.string "status", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
