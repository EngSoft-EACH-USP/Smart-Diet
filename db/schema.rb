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

ActiveRecord::Schema.define(version: 2020_12_06_032453) do

  create_table "calculadoras", force: :cascade do |t|
    t.integer "peso"
    t.float "altura"
    t.integer "idade"
    t.integer "meta"
    t.string "sexo"
    t.integer "tempo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "consulta", force: :cascade do |t|
    t.string "nome"
    t.string "sexo"
    t.integer "idade"
    t.string "email"
    t.string "profissional"
    t.text "descricao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dieta", force: :cascade do |t|
    t.string "nome"
    t.string "cafe"
    t.string "almoco"
    t.string "lanche"
    t.string "jantar"
    t.string "bebida"
    t.string "extra"
    t.integer "kcal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nutricionista", force: :cascade do |t|
    t.text "nome"
    t.integer "crn"
    t.text "email"
    t.integer "exp"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
