class CreateGrowthControls < ActiveRecord::Migration
  def change
    create_table :growth_controls do |t|
      t.date :fecha
      t.string :edad
      t.string :peso
      t.string :talla
      t.references :pediatric_control, index: true

      t.timestamps null: false
    end
    add_foreign_key :growth_controls, :pediatric_controls
  end
end
