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

ActiveRecord::Schema.define(version: 2019_04_06_233737) do

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "sobre_nome"
    t.string "telefone"
    t.string "email"
    t.integer "user_id"
    t.text "notas"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "natures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pays", force: :cascade do |t|
    t.integer "provider_id"
    t.integer "nature_id"
    t.decimal "valor"
    t.integer "tipo_pagamento"
    t.date "data_vencimento"
    t.date "data_pagamento"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nature_id"], name: "index_pays_on_nature_id"
    t.index ["provider_id"], name: "index_pays_on_provider_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.decimal "valor"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "telefone"
    t.string "email"
    t.text "notas"
    t.integer "status"
    t.integer "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recieves", force: :cascade do |t|
    t.integer "client_id"
    t.integer "nosso_num"
    t.decimal "valor"
    t.date "data_vencimento"
    t.date "data_baixa"
    t.integer "forma_pagamento"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_recieves_on_client_id"
  end

  create_table "sales", force: :cascade do |t|
    t.integer "client_id"
    t.integer "plan_id"
    t.integer "user_id"
    t.date "vencimento_lista"
    t.string "link_lista"
    t.text "nota"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_sales_on_client_id"
    t.index ["plan_id"], name: "index_sales_on_plan_id"
    t.index ["user_id"], name: "index_sales_on_user_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "client_id"
    t.integer "user_id"
    t.date "data"
    t.text "nota"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_schedules_on_client_id"
    t.index ["user_id"], name: "index_schedules_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
