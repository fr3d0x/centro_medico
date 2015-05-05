class Doctor < ActiveRecord::Base
	has_many :appointments, :dependent => :destroy
	has_many :patients, :through => :appointments
	has_many :doctors, :dependent => :destroy

	validates :especialidad, presence: true, on: :update
end
