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

ActiveRecord::Schema.define(version: 2022_03_24_045727) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "escort_categories", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_escort_categories_on_user_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.string "subject_class"
    t.text "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "language_items", force: :cascade do |t|
    t.string "uid"
    t.bigint "language_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_language_items_on_language_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_languages_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "uid"
    t.string "full_address"
    t.string "street"
    t.string "state"
    t.string "city"
    t.string "country"
    t.string "phone_number"
    t.float "latitude"
    t.float "longitude"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "permission_items", force: :cascade do |t|
    t.string "uid"
    t.bigint "permission_id"
    t.string "action_name"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permission_id"], name: "index_permission_items_on_permission_id"
  end

  create_table "permissions", force: :cascade do |t|
    t.string "uid"
    t.bigint "feature_id"
    t.bigint "role_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_id"], name: "index_permissions_on_feature_id"
    t.index ["role_id"], name: "index_permissions_on_role_id"
  end

  create_table "physical_appearances", force: :cascade do |t|
    t.string "uid"
    t.float "height", default: 0.0
    t.float "weight", default: 0.0
    t.string "corpulence"
    t.string "eye"
    t.string "hair"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_physical_appearances_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "uid"
    t.string "first_name"
    t.string "last_name"
    t.string "nickname"
    t.string "sex"
    t.date "birth_date"
    t.bigint "escort_category_id"
    t.string "nationality"
    t.text "presentation"
    t.string "marital_status"
    t.string "sexual_orientation"
    t.string "occupation"
    t.string "astrology"
    t.string "religion"
    t.string "ethnicity"
    t.string "purpose"
    t.string "available"
    t.string "alcohol"
    t.string "smoking"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["escort_category_id"], name: "index_profiles_on_escort_category_id"
    t.index ["user_id"], name: "index_profiles_on_user_id", unique: true
  end

  create_table "roles", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.text "description"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_user_items", force: :cascade do |t|
    t.string "uid"
    t.bigint "service_user_id"
    t.bigint "service_id"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_service_user_items_on_service_id"
    t.index ["service_user_id"], name: "index_service_user_items_on_service_user_id"
  end

  create_table "service_users", force: :cascade do |t|
    t.string "uid"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_service_users_on_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.float "price"
    t.text "description"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_services_on_user_id"
  end

  create_table "social_links", force: :cascade do |t|
    t.string "uid"
    t.string "name"
    t.string "url"
    t.string "icon"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_social_links_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "uid"
    t.string "login"
    t.bigint "role_id", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
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
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  create_table "working_hours", force: :cascade do |t|
    t.string "uid"
    t.string "working_day"
    t.time "start_hour"
    t.time "end_hour"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_working_hours_on_user_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "escort_categories", "users"
  add_foreign_key "language_items", "languages"
  add_foreign_key "languages", "users"
  add_foreign_key "locations", "users"
  add_foreign_key "permission_items", "permissions"
  add_foreign_key "permissions", "features"
  add_foreign_key "permissions", "roles"
  add_foreign_key "physical_appearances", "users"
  add_foreign_key "profiles", "escort_categories"
  add_foreign_key "profiles", "users"
  add_foreign_key "service_user_items", "service_users"
  add_foreign_key "service_user_items", "services"
  add_foreign_key "service_users", "users"
  add_foreign_key "services", "users"
  add_foreign_key "social_links", "users"
  add_foreign_key "users", "roles"
  add_foreign_key "working_hours", "users"
end
