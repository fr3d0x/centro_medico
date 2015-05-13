class PediatricAppointment < ActiveRecord::Base
	belongs_to :doctor
  belongs_to :patient
  belongs_to :pediatric_patient
end
