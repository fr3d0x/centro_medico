class PediatricAppointment < ActiveRecord::Base
  belongs_to :patients
  belongs_to :pediatric_patients
end
