# == Schema Information
#
# Table name: service_user_items
#
#  id              :bigint           not null, primary key
#  uid             :string
#  service_user_id :bigint
#  service_id      :bigint
#  price           :float
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class ServiceUserItem < ApplicationRecord
  include SharedUtils::Generate
	
  before_save :generate_random_number_uid

  belongs_to :service_user
  belongs_to :service

  # Change default params ID to uid
  def to_param
    uid
  end
end
