# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_26_030743) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "applications", force: :cascade do |t|
    t.string "website"
    t.integer "category"
    t.boolean "mlm_status"
    t.string "online_orders"
    t.boolean "previous_vendor"
    t.boolean "mask_maker"
    t.string "facebook_link"
    t.string "instagram_link"
    t.string "image_one"
    t.string "image_two"
    t.string "previous_efforts"
    t.string "additional_info"
    t.string "description"
    t.boolean "first_event"
    t.string "price_range"
    t.integer "booth_choice"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "event_id"
    t.string "best_gift"
    t.string "short_description"
    t.index ["event_id"], name: "index_applications_on_event_id"
    t.index ["user_id"], name: "index_applications_on_user_id"
  end

  create_table "event_users", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_event_users_on_event_id"
    t.index ["user_id"], name: "index_event_users_on_user_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "application_open_date"
    t.date "application_close_date"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "business_name"
    t.string "email_address"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "role", default: 0
  end

  add_foreign_key "applications", "events"
  add_foreign_key "applications", "users"
  add_foreign_key "event_users", "events"
  add_foreign_key "event_users", "users"
end
