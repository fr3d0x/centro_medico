class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :tab_nombre
      t.string :tab_nemonico
      t.text :tab_descripcion

      t.timestamps null: false
    end
  end
end
