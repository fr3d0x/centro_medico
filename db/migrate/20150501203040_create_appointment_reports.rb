class CreateAppointmentReports < ActiveRecord::Migration
  def change
    create_table :appointment_reports do |t|
      t.text :diagnostico
      t.text :tratamiento
      t.text :informe_medico
      t.references :appointment, index: true
      
      t.timestamps null: false
    end
  add_foreign_key :appointment_reports, :appointments
  end
end
