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

ActiveRecord::Schema[7.0].define(version: 2023_09_02_062621) do
  create_table "exercise_logs", force: :cascade do |t|
    t.integer "reps"
    t.integer "weight"
    t.boolean "failure", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_exercise_logs_on_user_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.integer "order"
    t.string "description"
    t.integer "sets"
    t.integer "min_reps"
    t.integer "max_reps"
    t.integer "workout_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workout_id"], name: "index_exercises_on_workout_id"
  end

  create_table "phases", force: :cascade do |t|
    t.string "name"
    t.integer "order"
    t.string "objective"
    t.string "what_to_expect"
    t.integer "duration_days"
    t.integer "program_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_phases_on_program_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "progressions", force: :cascade do |t|
    t.integer "phase"
    t.integer "workout"
    t.integer "exercise"
    t.integer "set"
    t.integer "program_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_progressions_on_program_id"
    t.index ["user_id"], name: "index_progressions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.integer "failed_attempts", default: 100, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.integer "order"
    t.string "description"
    t.integer "phase_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["phase_id"], name: "index_workouts_on_phase_id"
  end

  add_foreign_key "exercise_logs", "users"
  add_foreign_key "exercises", "workouts"
  add_foreign_key "phases", "programs"
  add_foreign_key "progressions", "programs"
  add_foreign_key "progressions", "users"
  add_foreign_key "workouts", "phases"
end
