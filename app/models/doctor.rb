class Doctor < ActiveRecord::Base
	has_many :appointments, :dependent => :destroy
	has_many :patients, :through => :appointments
	has_many :doctors, :dependent => :destroy
	before_save :fields_to_downcase

	validates :especialidad, presence: true, on: :update
	

	protected


  def fields_to_downcase
  	self.nombre.downcase!
  	self.apellido.downcase!
  end 

	def self.search(search)
		if search
			search = search.downcase!
	  	if search == " "
	  	  self.all
	  	else
	    	ids = Array.new
	    	names = search.to_s.split(" ")
	    	if names.count >= 2
	      	ids = self.where("nombre like ? AND apellido like ?", "%#{names[0]}%", "%#{names[1]}%").pluck(:id)
	      else
	      	ids = self.where("nombre like ? OR apellido like ?", "%#{names[0]}%", "%#{names[0]}%").pluck(:id)
	      end
	    end
	    ids = ids.flatten.group_by {|i| i}.sort_by {|_, a| -a.count}.map(&:first).delete_if(&:blank?)
	    where(id: ids).index_by(&:id).values_at(*ids)
		else
	    self.all
	  end
	end
	
end
