# == Schema Information
#
# Table name: language_items
#
#  id          :bigint           not null, primary key
#  uid         :string
#  language_id :bigint
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class LanguageItem < ApplicationRecord
	include SharedUtils::Generate
  	before_save :generate_random_number_uid


  	belongs_to :language


  	# Change default params ID to uid
	def to_param
		uid
	end

end
