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

ActiveRecord::Schema.define(version: 2019_02_03_162251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "website_url"
    t.integer "longitude"
    t.integer "latitude"
    t.string "phone_number"
    t.string "email"
    t.string "geographical_reach"
    t.string "category"
    t.string "status"
    t.bigint "user_id"
    t.integer "internal_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.text "long_description"
    t.index ["user_id"], name: "index_charities_on_user_id"
  end

  create_table "charity_theme_preferences", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "charity_theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charity_theme_id"], name: "index_charity_theme_preferences_on_charity_theme_id"
    t.index ["user_id"], name: "index_charity_theme_preferences_on_user_id"
  end

  create_table "charity_theme_relations", force: :cascade do |t|
    t.bigint "charity_id"
    t.bigint "charity_theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charity_id"], name: "index_charity_theme_relations_on_charity_id"
    t.index ["charity_theme_id"], name: "index_charity_theme_relations_on_charity_theme_id"
  end

  create_table "charity_themes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "charity_type_preferences", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "charity_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charity_type_id"], name: "index_charity_type_preferences_on_charity_type_id"
    t.index ["user_id"], name: "index_charity_type_preferences_on_user_id"
  end

  create_table "charity_type_relations", force: :cascade do |t|
    t.bigint "charity_id"
    t.bigint "charity_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charity_id"], name: "index_charity_type_relations_on_charity_id"
    t.index ["charity_type_id"], name: "index_charity_type_relations_on_charity_type_id"
  end

  create_table "charity_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "post_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "donations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "charity_id"
    t.integer "credit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charity_id"], name: "index_donations_on_charity_id"
    t.index ["user_id"], name: "index_donations_on_user_id"
  end

  create_table "follows", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "charity_id"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charity_id"], name: "index_follows_on_charity_id"
    t.index ["user_id"], name: "index_follows_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "post_id"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_likes_on_post_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.bigint "charity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.index ["charity_id"], name: "index_posts_on_charity_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "charity_id"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charity_id"], name: "index_ratings_on_charity_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
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
    t.date "birth_date"
    t.integer "longitude"
    t.integer "latitude"
    t.string "phone_number"
    t.integer "total_credit"
    t.boolean "admin"
    t.string "photo"
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "charities", "users"
  add_foreign_key "charity_theme_preferences", "charity_themes"
  add_foreign_key "charity_theme_preferences", "users"
  add_foreign_key "charity_theme_relations", "charities"
  add_foreign_key "charity_theme_relations", "charity_themes"
  add_foreign_key "charity_type_preferences", "charity_types"
  add_foreign_key "charity_type_preferences", "users"
  add_foreign_key "charity_type_relations", "charities"
  add_foreign_key "charity_type_relations", "charity_types"
  add_foreign_key "comments", "posts"
  add_foreign_key "comments", "users"
  add_foreign_key "donations", "charities"
  add_foreign_key "donations", "users"
  add_foreign_key "follows", "charities"
  add_foreign_key "follows", "users"
  add_foreign_key "likes", "posts"
  add_foreign_key "likes", "users"
  add_foreign_key "posts", "charities"
  add_foreign_key "ratings", "charities"
  add_foreign_key "ratings", "users"
end
