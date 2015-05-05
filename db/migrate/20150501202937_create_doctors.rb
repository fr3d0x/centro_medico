class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :nombre
      t.string :apellido
      t.string :especialidad
      t.string :cedula
      t.text :direccion
      t.string :telefono1
      t.string :telefono2
      t.references :user, index: true

      t.timestamps null: false
    end
  add_foreign_key :doctors, :users
  end
end
