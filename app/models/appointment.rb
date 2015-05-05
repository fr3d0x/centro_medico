class Appointment < ActiveRecord::Base
	belongs_to :doctor
	belongs_to :patient
	has_one :appointment_report, :dependent => :destroy
end
