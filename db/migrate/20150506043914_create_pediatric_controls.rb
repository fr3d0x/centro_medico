class CreatePediatricControls < ActiveRecord::Migration
  def change
    create_table :pediatric_controls do |t|
      t.date :bcg1
      t.date :bcg2
      t.date :bcg3
      t.date :triple1
      t.date :triple2
      t.date :triple3
      t.date :ref_triple1
      t.date :ref_triple2
      t.date :ref_triple3
      t.date :polio1
      t.date :polio2
      t.date :polio3
      t.date :ref_polio1
      t.date :ref_polio2
      t.date :ref_polio3
      t.date :sarampion
      t.date :parotiditis
      t.date :rubeola
      t.date :f_amarilla
      t.date :trivalente
      t.text :otras
      t.text :observaciones
      t.references :pediatric_history, index: true

      t.timestamps null: false
    end
    add_foreign_key :pediatric_controls, :pediatric_histories
  end
end
