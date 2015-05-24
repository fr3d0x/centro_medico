class Patient < ActiveRecord::Base
	has_one :medical_history, :dependent => :destroy, :autosave => true
	accepts_nested_attributes_for :medical_history
	has_one :pediatric_history
	has_many :appointments, :dependent => :destroy
	has_many :pediatric_appointments, :dependent => :destroy
	has_many :doctors, :through => :appointments

	validates :cedula, presence: {message: "Debe indicar la cedula del paciente"}    
	validates :cedula, uniqueness: {message: "Esta cedula ya existe"}
	validates :cedula, numericality: {message: "La cedula debe ser numerica"}
	validates :apellido, :nombre, presence: {message: "Debe el nombre y apellido del paciente"}
	validates :edad, presence: {message: "Debe indicar la edad del paciente"}
	validates :telefono, presence: {message: "Debe indicar el telefono del paciente"}

	protected

	def self.search(search)
	  if search
	  	if search == ""
	  	  self.all
	  	else
	      ids = self.where("cedula like ?", "%#{search}%").pluck(:id)

	      where(id: ids).index_by(&:id).values_at(*ids)
	  	end
	  else
	    self.all
	  end
	end
	def self.existente(string)
		paciente = find_by(cedula: string)
		return paciente
	end
end