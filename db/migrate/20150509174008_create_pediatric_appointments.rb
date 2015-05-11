class CreatePediatricAppointments < ActiveRecord::Migration
  def change
    create_table :pediatric_appointments do |t|
      t.text :motivo
      t.boolean :estado
      t.date   :fecha
      t.time   :hora
      t.string :responsable
      t.string :telefono
      t.string :relacion
      t.references :pediatric_patient, index: true
      t.references :patient, index: true

      t.timestamps null: false
    end
    add_foreign_key :pediatric_appointments, :pediatric_patients
    add_foreign_key :pediatric_appointments, :patients
  end
end