# == Schema Information
#
# Table name: profiles
#
#  id         :bigint           not null, primary key
#  uid        :string
#  first_name :string
#  last_name  :string
#  civility   :string
#  address    :string
#  phone      :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Profile < ApplicationRecord
  

  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :user

  has_one_attached :avatar


  def full_name
    "#{first_name} #{last_name}"
  end


  # Change default params ID to uid
  def to_param
    uid
  end
end
