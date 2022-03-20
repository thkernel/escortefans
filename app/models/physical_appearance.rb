# == Schema Information
#
# Table name: physical_appearances
#
#  id         :bigint           not null, primary key
#  uid        :string
#  height     :float            default(0.0)
#  weight     :float            default(0.0)
#  corpulence :string
#  eye        :string
#  hair       :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PhysicalAppearance < ApplicationRecord

	include SharedUtils::Generate
	
  	before_save :generate_random_number_uid



  belongs_to :user

  # Change default params ID to uid
  def to_param
    uid
  end
end
