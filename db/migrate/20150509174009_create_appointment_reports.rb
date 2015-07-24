class CreateAppointmentReports < ActiveRecord::Migration
  def change
    create_table :appointment_reports do |t|
      t.text :diagnostico
      t.text :tratamiento
      t.text :reposo
      t.text :examenes_solicitados
      t.references :appointment, index: true
      t.references :pediatric_appointment, index: true
      
      t.timestamps null: false
    end
  add_foreign_key :appointment_reports, :appointments
  add_foreign_key :appointment_reports, :pediatric_appointments
  end
end
