class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :cedula
      t.string :num_hist_medica
      t.string :apellido
      t.string :nombre
      t.date :fecha_nacimiento
      t.date :fecha_ingreso
      t.string :estado_civil
      t.string :telefono
      t.text :direccion
      t.string :sexo

      t.timestamps null: false
    end
  end
end
