# == Schema Information
#
# Table name: services
#
#  id          :bigint           not null, primary key
#  uid         :string
#  name        :string
#  price       :float
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Service < ApplicationRecord
	include SharedUtils::Generate
	
  	before_save :generate_random_number_uid

    belongs_to :user

    has_many :service_user_items, dependent: :destroy

  # Change default params ID to uid
  def to_param
    uid
  end
end
