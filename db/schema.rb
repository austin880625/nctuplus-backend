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

ActiveRecord::Schema.define(version: 2018_04_23_032531) do

  create_table "agreed_scores", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id", default: 0, null: false
    t.integer "course_id", default: 0, null: false
    t.integer "course_field_id", default: 0, null: false
    t.string "cos_type", default: "", null: false
    t.string "score", default: "通過", null: false
    t.string "memo", default: "", null: false
    t.index ["course_id"], name: "index_agreed_scores_on_course_id"
    t.index ["user_id"], name: "index_agreed_scores_on_user_id"
  end

  create_table "attendances", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_attendances_on_event_id"
    t.index ["user_id"], name: "index_attendances_on_user_id"
  end

  create_table "auth_e3s", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.string "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "auth_facebooks", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "email"
    t.string "uid"
    t.string "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "auth_googles", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.string "uid"
    t.string "email"
    t.string "name"
    t.string "image_url"
    t.string "gender"
    t.date "birthday"
    t.string "location"
    t.string "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "auth_nctus", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.string "student_id"
    t.string "email"
    t.string "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "backgrounds", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "image_file_name"
    t.string "image_content_type"
    t.bigint "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_trade_info_ctsships", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "book_trade_info_id"
    t.integer "course_teachership_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_trade_info_id"], name: "index_book_trade_info_ctsships_on_book_trade_info_id"
    t.index ["course_teachership_id"], name: "index_book_trade_info_ctsships_on_course_teachership_id"
  end

  create_table "book_trade_infos", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "book_id", default: 0, null: false
    t.integer "user_id", default: 0, null: false
    t.integer "contact_way", default: 0, null: false
    t.string "book_name", default: "", null: false
    t.integer "price", default: 0, null: false
    t.integer "status", default: 0, null: false
    t.integer "view_times", default: 0, null: false
    t.text "desc", null: false
    t.string "cover_file_name"
    t.string "cover_content_type"
    t.integer "cover_file_size"
    t.datetime "cover_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_trade_infos_on_book_id"
    t.index ["user_id"], name: "index_book_trade_infos_on_user_id"
  end

  create_table "books", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.boolean "from_google", default: false, null: false
    t.string "title", default: "", null: false
    t.string "isbn"
    t.string "authors"
    t.text "description"
    t.text "image_link"
    t.text "preview_link"
    t.integer "user_id", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_books_on_user_id"
  end

  create_table "bulletins", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "article"
    t.boolean "article_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "update_user"
    t.boolean "hidden_type", default: false, null: false
    t.datetime "begin_time", default: "2017-01-01 00:00:00"
    t.datetime "end_time", default: "2017-01-01 00:00:00"
    t.index ["user_id"], name: "index_bulletins_on_user_id"
  end

  create_table "cf_credits", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "course_field_id"
    t.integer "index", default: 0
    t.integer "credit_need", default: 0
    t.string "memo", default: "default"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_field_id"], name: "index_cf_credits_on_course_field_id"
  end

  create_table "cf_field_need", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "course_field_id"
    t.integer "field_need", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_field_id"], name: "index_cf_field_need_on_course_field_id"
  end

  create_table "cm_cfships", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "course_map_id"
    t.integer "course_field_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_field_id"], name: "index_cm_cfships_on_course_field_id"
    t.index ["course_map_id"], name: "index_cm_cfships_on_course_map_id"
  end

  create_table "colleges", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "real_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_teachership_id"
    t.integer "content_type"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_teachership_id"], name: "index_comments_on_course_teachership_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "content_list_ranks", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "course_content_list_id"
    t.integer "user_id"
    t.integer "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_content_list_id"], name: "index_content_list_ranks_on_course_content_list_id"
    t.index ["user_id"], name: "index_content_list_ranks_on_user_id"
  end

  create_table "course_content_heads", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "course_teachership_id"
    t.integer "exam_record"
    t.integer "homework_record"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "last_user_id"
    t.integer "course_rollcall"
    t.index ["course_teachership_id"], name: "index_course_content_heads_on_course_teachership_id"
  end

  create_table "course_content_lists", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "course_teachership_id"
    t.integer "user_id"
    t.integer "content_type"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_teachership_id"], name: "index_course_content_lists_on_course_teachership_id"
    t.index ["user_id"], name: "index_course_content_lists_on_user_id"
  end

  create_table "course_details", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "course_teachership_id"
    t.integer "department_id", null: false
    t.integer "semester_id"
    t.string "grade"
    t.string "time"
    t.string "room"
    t.string "temp_cos_id"
    t.string "brief"
    t.text "memo"
    t.string "reg_num"
    t.string "students_limit"
    t.string "cos_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "view_times", default: 0, null: false
    t.index ["course_teachership_id"], name: "index_course_details_on_course_teachership_id"
    t.index ["department_id"], name: "index_course_details_on_department_id"
    t.index ["semester_id"], name: "index_course_details_on_semester_id"
  end

  create_table "course_field_lists", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "course_field_id"
    t.integer "course_id"
    t.integer "course_group_id"
    t.string "grade", default: "*"
    t.string "half", default: "*"
    t.boolean "record_type", default: true
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_field_id"], name: "index_course_field_lists_on_course_field_id"
    t.index ["course_group_id"], name: "index_course_field_lists_on_course_group_id"
    t.index ["course_id"], name: "index_course_field_lists_on_course_id"
    t.index ["user_id"], name: "index_course_field_lists_on_user_id"
  end

  create_table "course_field_selfships", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "parent_id"
    t.integer "child_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parent_id", "child_id"], name: "index_course_field_selfships_on_parent_id_and_child_id"
  end

  create_table "course_fields", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.integer "credit_need", default: 0
    t.text "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "field_type", default: 0
    t.index ["user_id"], name: "index_course_fields_on_user_id"
  end

  create_table "course_group_lists", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "course_group_id"
    t.integer "course_id"
    t.integer "user_id"
    t.integer "lead", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_group_id"], name: "index_course_group_lists_on_course_group_id"
    t.index ["course_id"], name: "index_course_group_lists_on_course_id"
    t.index ["user_id"], name: "index_course_group_lists_on_user_id"
  end

  create_table "course_groups", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.integer "gtype", default: 0
    t.integer "course_map_id", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_map_id"], name: "index_course_groups_on_course_map_id"
    t.index ["user_id"], name: "index_course_groups_on_user_id"
  end

  create_table "course_maps", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "department_id"
    t.string "name"
    t.text "desc", null: false
    t.integer "year"
    t.integer "total_credit", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["department_id"], name: "index_course_maps_on_department_id"
    t.index ["user_id"], name: "index_course_maps_on_user_id"
  end

  create_table "course_teacher_ratings", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_teachership_id"
    t.integer "score"
    t.integer "rating_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_teachership_id"], name: "index_course_teacher_ratings_on_course_teachership_id"
    t.index ["user_id"], name: "index_course_teacher_ratings_on_user_id"
  end

  create_table "course_teacherships", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "course_id"
    t.string "teacher_id"
    t.index ["course_id"], name: "index_course_teacherships_on_course_id"
    t.index ["teacher_id"], name: "index_course_teacherships_on_teacher_id"
  end

  create_table "courses", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "ch_name"
    t.string "eng_name"
    t.integer "credit"
    t.boolean "is_virtual", default: false, null: false
    t.string "real_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["real_id"], name: "index_courses_on_real_id"
  end

  create_table "departments", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "ch_name"
    t.string "eng_name"
    t.boolean "has_courses", default: false
    t.boolean "majorable", default: false
    t.integer "degree"
    t.integer "college_id", default: 0
    t.string "dept_type"
    t.string "dep_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["college_id"], name: "index_departments_on_college_id"
    t.index ["degree"], name: "index_departments_on_degree"
  end

  create_table "discusses", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_teachership_id"
    t.string "title"
    t.text "content"
    t.boolean "is_anonymous", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_teachership_id"], name: "index_discusses_on_course_teachership_id"
    t.index ["user_id"], name: "index_discusses_on_user_id"
  end

  create_table "event_follows", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.integer "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_follows_on_event_id"
    t.index ["user_id"], name: "index_event_follows_on_user_id"
  end

  create_table "events", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "event_type"
    t.string "title", null: false
    t.string "organization"
    t.string "location", null: false
    t.string "lat_long"
    t.string "url", limit: 2083
    t.text "content", limit: 4294967295, null: false
    t.datetime "begin_time", null: false
    t.datetime "end_time", null: false
    t.integer "user_id", null: false
    t.integer "view_times", default: 0, null: false
    t.integer "attendances_count", default: 0
    t.integer "event_follows_count", default: 0
    t.boolean "banner", default: false
    t.string "cover_file_name"
    t.string "cover_content_type"
    t.bigint "cover_file_size"
    t.datetime "cover_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "global_variables", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "data"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "normal_scores", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id", default: 0, null: false
    t.integer "course_detail_id", default: 0, null: false
    t.integer "course_field_id", default: 0, null: false
    t.string "cos_type", default: "", null: false
    t.string "score", default: "", null: false
    t.index ["course_detail_id"], name: "index_normal_scores_on_course_detail_id"
    t.index ["course_field_id"], name: "index_normal_scores_on_course_field_id"
    t.index ["user_id"], name: "index_normal_scores_on_user_id"
  end

  create_table "past_exams", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_teachership_id"
    t.integer "semester_id"
    t.boolean "is_anonymous", default: false
    t.string "description"
    t.integer "download_times"
    t.string "upload_file_name"
    t.string "upload_content_type"
    t.integer "upload_file_size"
    t.datetime "upload_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_teachership_id"], name: "index_past_exams_on_course_teachership_id"
    t.index ["semester_id"], name: "index_past_exams_on_semester_id"
    t.index ["user_id"], name: "index_past_exams_on_user_id"
  end

  create_table "semesters", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.integer "half"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "slogans", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "hidden_type", default: false, null: false
  end

  create_table "sub_discusses", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.integer "discuss_id"
    t.text "content"
    t.boolean "is_anonymous", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discuss_id"], name: "index_sub_discusses_on_discuss_id"
    t.index ["user_id"], name: "index_sub_discusses_on_user_id"
  end

  create_table "teachers", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "real_id"
    t.string "name"
    t.boolean "is_deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_collections", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.integer "target_id"
    t.integer "semester_id"
    t.string "name", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["semester_id"], name: "index_user_collections_on_semester_id"
    t.index ["user_id"], name: "index_user_collections_on_user_id"
  end

  create_table "user_coursemapships", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "course_map_id"
    t.integer "user_id"
    t.integer "need_update", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_map_id"], name: "index_user_coursemapships_on_course_map_id"
    t.index ["user_id"], name: "index_user_coursemapships_on_user_id"
  end

  create_table "user_favorite_courses", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "year", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "department_id"
    t.boolean "agree", default: false
    t.boolean "agree_share", default: false
    t.integer "role", default: 1
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["department_id"], name: "index_users_on_department_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
