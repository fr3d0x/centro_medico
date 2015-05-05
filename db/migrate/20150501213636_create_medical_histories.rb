class CreateMedicalHistories < ActiveRecord::Migration
  def change
    create_table :medical_histories do |t|
      t.string :tipo_sangre
      t.string :peso
      t.string :altura
      t.boolean :posee_alergias
      t.text :alergias
      t.boolean :fumador
      t.string :ocupacion
      t.text :antecedentes_lesiones
      t.text :antecedentes_familiares
      t.text :condicion_medica_actual
      t.text :cirugias
      t.boolean :reg_its_sida
      t.references :patient, index: true

      t.timestamps null: false
    end
  add_foreign_key :medical_histories, :patients
  end
end
