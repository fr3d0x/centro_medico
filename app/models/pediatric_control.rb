class PediatricControl < ActiveRecord::Base
	has_many :growth_controls, :dependent => :destroy
	accepts_nested_attributes_for :growth_controls, :allow_destroy => true, :reject_if => lambda { |a| a[:peso].blank? }
	belongs_to :pediatric_history
end
