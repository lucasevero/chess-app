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

ActiveRecord::Schema[7.0].define(version: 2024_03_13_172000) do
  create_table "boards", force: :cascade do |t|
    t.string "board_state", default: "[9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,4,2,3,5,6,3,2,4,9,9,1,1,1,1,1,1,1,1,9,9,0,0,0,0,0,0,0,0,9,9,0,0,0,0,0,0,0,0,9,9,0,0,0,0,0,0,0,0,9,9,0,0,0,0,0,0,0,0,9,9,-1,-1,-1,-1,-1,-1,-1,-1,9,9,-4,-2,-3,-5,-6,-3,-2,-4,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9]"
    t.boolean "finished", default: false
    t.integer "white_id"
    t.integer "black_id"
    t.string "moves", default: ""
    t.string "winner"
    t.string "next_to_move", default: "White"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["black_id"], name: "index_boards_on_black_id"
    t.index ["white_id"], name: "index_boards_on_white_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "username"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "boards", "users", column: "black_id"
  add_foreign_key "boards", "users", column: "white_id"
end
