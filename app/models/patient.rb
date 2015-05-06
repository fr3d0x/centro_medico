class Patient < ActiveRecord::Base
	has_one :medical_history, :dependent => :destroy, :autosave => true
	accepts_nested_attributes_for :medical_history
	has_one :pediatric_history
	has_many :appointments, :dependent => :destroy
	has_many :doctors, :through => :appointments

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
end
