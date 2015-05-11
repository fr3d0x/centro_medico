class AppointmentReport < ActiveRecord::Base
	belongs_to :appointment
	belongs_to :pediatric_appointment
end
