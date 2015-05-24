class RemoveColumnFromMedicalHistory < ActiveRecord::Migration
  def change
  	remove_column :medical_histories, :posee_alergias
  end
end
