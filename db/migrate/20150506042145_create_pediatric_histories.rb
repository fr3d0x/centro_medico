class CreatePediatricHistories < ActiveRecord::Migration
  def change
    create_table :pediatric_histories do |t|
      t.string :edad
      t.string :genero
      t.string :peso
      t.string :talla
      t.string :lugar_nacimiento
      t.string :lugar_residencia
      t.string :padre
      t.string :ced_padre
      t.string :madre
      t.string :ced_madre
      t.text :diagnostico_familiar
      t.text :antecedentes_prenatales
      t.text :antecedentes_natales
      t.text :antecedentes_postnatales
      t.text :sintomas_generales
      t.references :pediatric_patient, index: true
      t.references :patient, index: true

      t.timestamps null: false
    end
    add_foreign_key :pediatric_histories, :pediatric_patients
    add_foreign_key :pediatric_histories, :patients
  end
end
