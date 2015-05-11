class Record < ActiveRecord::Base
  belongs_to :table

	protected
	def self.buscar_tabla (integer)
		where(table_id: integer)
	end

	def self.buscar_registro (string)
    	find_by!(:rec_varchar => string)
  end
end
