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

ActiveRecord::Schema[7.0].define(version: 2022_05_28_161510) do
  create_table "entradas", force: :cascade do |t|
    t.integer "funcion_id", null: false
    t.integer "usuario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["funcion_id"], name: "index_entradas_on_funcion_id"
    t.index ["usuario_id"], name: "index_entradas_on_usuario_id"
  end

  create_table "funcions", force: :cascade do |t|
    t.integer "pelicula_id", null: false
    t.integer "sala_id", null: false
    t.datetime "fecha"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pelicula_id"], name: "index_funcions_on_pelicula_id"
    t.index ["sala_id"], name: "index_funcions_on_sala_id"
  end

  create_table "peliculas", force: :cascade do |t|
    t.string "titulo"
    t.text "descripcion"
    t.string "director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salas", force: :cascade do |t|
    t.string "nombre"
    t.integer "capacidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nombre"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "entradas", "funcions"
  add_foreign_key "entradas", "usuarios"
  add_foreign_key "funcions", "peliculas"
  add_foreign_key "funcions", "salas"
end
