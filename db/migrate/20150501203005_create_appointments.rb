class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.text :motivo
      t.boolean :estado
      t.date   :fecha
      t.time   :hora
      t.references :doctor, index: true
      t.references :patient, index: true

      t.timestamps null: false
    end
  add_foreign_key :appointments, :doctors
  add_foreign_key :appointments, :patients
  end
end
