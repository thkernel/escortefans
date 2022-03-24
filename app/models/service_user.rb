# == Schema Information
#
# Table name: service_users
#
#  id         :bigint           not null, primary key
#  uid        :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ServiceUser < ApplicationRecord
  include SharedUtils::Generate
	
  	before_save :generate_random_number_uid


  
  belongs_to :user

  has_many :service_user_items
  
  accepts_nested_attributes_for :service_user_items

  # Change default params ID to uid
  def to_param
    uid
  end

end
