# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150506044150) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointment_reports", force: :cascade do |t|
    t.text     "diagnostico"
    t.text     "tratamiento"
    t.text     "informe_medico"
    t.integer  "appointment_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "appointment_reports", ["appointment_id"], name: "index_appointment_reports_on_appointment_id", using: :btree

  create_table "appointments", force: :cascade do |t|
    t.text     "motivo"
    t.string   "apellido"
    t.string   "nombre"
    t.string   "cedula"
    t.string   "telefono"
    t.boolean  "estado"
    t.date     "fecha"
    t.time     "hora"
    t.boolean  "menor"
    t.integer  "doctor_id"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "appointments", ["doctor_id"], name: "index_appointments_on_doctor_id", using: :btree
  add_index "appointments", ["patient_id"], name: "index_appointments_on_patient_id", using: :btree

  create_table "doctors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "especialidad"
    t.string   "cedula"
    t.text     "direccion"
    t.string   "telefono1"
    t.string   "telefono2"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "doctors", ["user_id"], name: "index_doctors_on_user_id", using: :btree

  create_table "growth_controls", force: :cascade do |t|
    t.date     "fecha"
    t.string   "edad"
    t.string   "peso"
    t.string   "talla"
    t.integer  "pediatric_control_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "growth_controls", ["pediatric_control_id"], name: "index_growth_controls_on_pediatric_control_id", using: :btree

  create_table "medical_histories", force: :cascade do |t|
    t.string   "tipo_sangre"
    t.string   "peso"
    t.string   "altura"
    t.boolean  "posee_alergias"
    t.text     "alergias"
    t.boolean  "fumador"
    t.string   "ocupacion"
    t.text     "antecedentes_lesiones"
    t.text     "antecedentes_familiares"
    t.text     "condicion_medica_actual"
    t.text     "cirugias"
    t.boolean  "reg_its_sida"
    t.integer  "patient_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "medical_histories", ["patient_id"], name: "index_medical_histories_on_patient_id", using: :btree

  create_table "patients", force: :cascade do |t|
    t.string   "cedula"
    t.string   "num_hist_medica"
    t.string   "apellido"
    t.string   "nombre"
    t.date     "fecha_nacimiento"
    t.integer  "edad"
    t.date     "fecha_ingreso"
    t.string   "estado_civil"
    t.string   "telefono"
    t.text     "direccion"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "pediatric_controls", force: :cascade do |t|
    t.date     "bcg1"
    t.date     "bcg2"
    t.date     "bcg3"
    t.date     "triple1"
    t.date     "triple2"
    t.date     "triple3"
    t.date     "ref_triple1"
    t.date     "ref_triple2"
    t.date     "ref_triple3"
    t.date     "polio1"
    t.date     "polio2"
    t.date     "polio3"
    t.date     "ref_polio1"
    t.date     "ref_polio2"
    t.date     "ref_polio3"
    t.date     "sarampion"
    t.date     "parotiditis"
    t.date     "rubeola"
    t.date     "f_amarilla"
    t.date     "trivalente"
    t.text     "otras"
    t.text     "observaciones"
    t.integer  "pediatric_history_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "pediatric_controls", ["pediatric_history_id"], name: "index_pediatric_controls_on_pediatric_history_id", using: :btree

  create_table "pediatric_histories", force: :cascade do |t|
    t.string   "edad"
    t.string   "genero"
    t.string   "peso"
    t.string   "talla"
    t.string   "lugar_nacimiento"
    t.string   "lugar_residencia"
    t.string   "padre"
    t.string   "madre"
    t.text     "diagnostico_familiar"
    t.text     "antecedentes_prenatales"
    t.text     "antecedentes_natales"
    t.text     "antecedentes_postnatales"
    t.text     "sintomas_generales"
    t.integer  "pediatric_patient_id"
    t.integer  "patient_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "pediatric_histories", ["patient_id"], name: "index_pediatric_histories_on_patient_id", using: :btree
  add_index "pediatric_histories", ["pediatric_patient_id"], name: "index_pediatric_histories_on_pediatric_patient_id", using: :btree

  create_table "pediatric_patients", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.date     "fecha_nacimiento"
    t.date     "fecha_ingreso"
    t.string   "telefono_padre"
    t.string   "telefono_madre"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "records", force: :cascade do |t|
    t.string   "rec_nemonico"
    t.text     "rec_descripcion"
    t.integer  "rec_integer"
    t.string   "rec_char"
    t.string   "rec_varchar"
    t.float    "rec_float"
    t.boolean  "rec_boolean"
    t.date     "rec_fech"
    t.boolean  "rec_activo"
    t.integer  "table_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "records", ["table_id"], name: "index_records_on_table_id", using: :btree

  create_table "tables", force: :cascade do |t|
    t.string   "tab_nombre"
    t.string   "tab_nemonico"
    t.text     "tab_descripcion"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "tipo"
    t.string   "cedula"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "appointment_reports", "appointments"
  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "patients"
  add_foreign_key "doctors", "users"
  add_foreign_key "growth_controls", "pediatric_controls"
  add_foreign_key "medical_histories", "patients"
  add_foreign_key "pediatric_controls", "pediatric_histories"
  add_foreign_key "pediatric_histories", "patients"
  add_foreign_key "pediatric_histories", "pediatric_patients"
  add_foreign_key "records", "tables"
end
