class LanguageItem < ApplicationRecord
	include SharedUtils::Generate
  	before_save :generate_random_number_uid


  	belongs_to :language


  	# Change default params ID to uid
	def to_param
		uid
	end

end
