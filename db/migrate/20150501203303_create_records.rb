class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :rec_nemonico
      t.text :rec_descripcion
      t.integer :rec_integer
      t.string :rec_char
      t.string :rec_varchar
      t.float :rec_float
      t.boolean :rec_boolean
      t.date :rec_fech
      t.boolean :rec_activo
      t.references :table, index: true

      t.timestamps null: false
    end
    add_foreign_key :records, :tables
  end
end
