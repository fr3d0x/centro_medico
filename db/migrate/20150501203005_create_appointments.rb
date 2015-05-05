class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.text :motivo
      t.string :apellido
      t.string :nombre
      t.string :cedula
      t.string :telefono
      t.boolean :estado
      t.date   :fecha
      t.time   :hora
      t.boolean :menor
      t.references :doctor, index: true
      t.references :patient, index: true

      t.timestamps null: false
    end
  add_foreign_key :appointments, :doctors
  add_foreign_key :appointments, :patients
  end
end
