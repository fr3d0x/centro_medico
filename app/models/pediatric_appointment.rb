class PediatricAppointment < ActiveRecord::Base
	belongs_to :doctor
  belongs_to :patient
  belongs_to :pediatric_patient
  has_one :appointment_report, :dependent => :destroy

  validates :doctor_id, :uniqueness => {:scope => [:fecha, :hora], message:"El doctor esta ocupado por favor elija otra hora"}
	validates :doctor_id, :responsable, :telefono, :relacion, :fecha, :hora, :motivo, presence: {message: "Debe estar presente para crear la cita"}
	validates :telefono, numericality: {message: "El telefono debe ser numerico"}

	def self.search(search)
	  if search
	  	if search == ""
	  	  self.where(fecha: DateTime.now.to_date)
	  	else
	      where(fecha: search)
	  	end
	  else
	    self.where(fecha: DateTime.now.to_date)
	  end
	end

	def self.doctor_search(search)
	  if search
	  	if search == ""
	  	  self.where("fecha >= ?", DateTime.now.to_date)
	  	else
	      where(fecha: search)
	  	end
	  else
	    self.where("fecha >= ?", DateTime.now.to_date)
	  end
	end
end