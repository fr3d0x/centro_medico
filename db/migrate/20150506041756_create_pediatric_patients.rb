class CreatePediatricPatients < ActiveRecord::Migration
  def change
    create_table :pediatric_patients do |t|
      t.string :nombre
      t.string :apellido
      t.date :fecha_nacimiento
      t.date :fecha_ingreso
      t.string :telefono_padre
      t.string :telefono_madre

      t.timestamps null: false
    end
  end
end
