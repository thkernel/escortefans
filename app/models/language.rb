# == Schema Information
#
# Table name: languages
#
#  id         :bigint           not null, primary key
#  uid        :string
#  name       :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Language < ApplicationRecord

	include SharedUtils::Generate
  	before_save :generate_random_number_uid


  belongs_to :user

  # Change default params ID to uid
  def to_param
    uid
  end
end
