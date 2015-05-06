class PediatricHistory < ActiveRecord::Base
	has_one :pediatric_control, :dependent => :destroy
	belongs_to :pediatric_patient
end
