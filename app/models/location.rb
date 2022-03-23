# == Schema Information
#
# Table name: locations
#
#  id           :bigint           not null, primary key
#  uid          :string
#  full_address :string
#  street       :string
#  state        :string
#  city         :string
#  country      :string
#  phone_number :string
#  latitude     :float
#  longitude    :float
#  user_id      :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Location < ApplicationRecord
	include SharedUtils::Generate
  	before_save :generate_random_number_uid

	belongs_to :user

	# Change default params ID to uid
	def to_param
		uid
	end
end
