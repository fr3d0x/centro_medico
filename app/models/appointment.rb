class Appointment < ActiveRecord::Base
	belongs_to :doctor
	belongs_to :patient
	has_one :appointment_report, :dependent => :destroy

	validates :doctor_id, :uniqueness => {:scope => [:fecha, :hora], message:"El doctor esta ocupado por favor elija otra hora"}
	validates :doctor_id, :patient_id, :fecha, :hora, :motivo, presence: {message: "Debe estar presente para crear la cita"}
end
