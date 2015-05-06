class PediatricControl < ActiveRecord::Base
	has_many :growth_controls, :dependent => :destroy
	accepts_nested_attributes_for :growth_controls, :reject_if => lambda { |a| a[:edad].blank? }, :allow_destroy => true
	belongs_to :pediatric_history
end
