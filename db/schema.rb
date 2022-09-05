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

ActiveRecord::Schema[7.0].define(version: 2022_09_03_090726) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "departments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string "course"
    t.boolean "verified", default: false
    t.bigint "university_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "department_id"
    t.string "academic_degree"
    t.string "university_email"
    t.date "start_date"
    t.date "end_date"
    t.index ["department_id"], name: "index_educations_on_department_id"
    t.index ["university_id"], name: "index_educations_on_university_id"
    t.index ["user_id"], name: "index_educations_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "university_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["university_id"], name: "index_favorites_on_university_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "university_id", null: false
    t.integer "reputabilty_rating"
    t.integer "education_quality_rating"
    t.integer "campus_facilities_accom_rating"
    t.integer "course_difficulty_rating"
    t.integer "social_element_rating"
    t.integer "value_for_money_rating"
    t.integer "safety_rating"
    t.integer "career_services_rating"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["university_id"], name: "index_reviews_on_university_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "universities", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "country"
    t.string "city"
    t.string "address"
    t.text "description"
    t.integer "ranking"
    t.string "domestic_course_fee"
    t.date "application_deadline"
    t.integer "student_count"
    t.boolean "dorm", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "international_course_fee"
    t.string "email_domain"
    t.float "latitude"
    t.float "longitude"
    t.string "logo"
    t.string "image"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "educations", "universities"
  add_foreign_key "educations", "users"
  add_foreign_key "favorites", "universities"
  add_foreign_key "favorites", "users"
  add_foreign_key "reviews", "universities"
  add_foreign_key "reviews", "users"
end
