class Doctor < ActiveRecord::Base
	has_many :appointments, :dependent => :destroy
	has_many :patients, :through => :appointments
	has_many :doctors, :dependent => :destroy
	before_save :fields_to_downcase

	validates :especialidad, presence: true, on: :update
	validates :especialidad, :cedula, :nombre, :apellido, :direccion, :telefono1, presence: {message: "Debe estar presente para crear la cita"}
	validates :direccion, :length => {
    :minimum   => 25,
    :maximum   => 1500,
    :too_short => "debe tener al menos %{count} caracteres",
    :too_long  => "debe tener %{count} caracteres maximo"
  }

	protected


  def fields_to_downcase
  	self.nombre.downcase!
  	self.apellido.downcase!
  end 

	def self.search(search)
		if search
			search = search.downcase!
	  	if search == " "
	  	  self.all
	  	else
	    	ids = Array.new
	    	names = search.to_s.split(" ")
	    	if names.count >= 2
	      	ids = self.where("nombre like ? AND apellido like ?", "%#{names[0]}%", "%#{names[1]}%").pluck(:id)
	      else
	      	ids = self.where("nombre like ? OR apellido like ?", "%#{names[0]}%", "%#{names[0]}%").pluck(:id)
	      end
	    end
	    ids = ids.flatten.group_by {|i| i}.sort_by {|_, a| -a.count}.map(&:first).delete_if(&:blank?)
	    where(id: ids).index_by(&:id).values_at(*ids)
		else
	    self.all
	  end
	end

  def self.doctors
  	ped = self.where(:especialidad => 'Pediatria')
  	doctors = self.all - ped
  	return doctors
  end

  def self.pediatras
  	ped = self.where(:especialidad => 'Pediatria')
  	return ped
  end

	
end
