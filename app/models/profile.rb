# == Schema Information
#
# Table name: profiles
#
#  id                 :bigint           not null, primary key
#  uid                :string
#  first_name         :string
#  last_name          :string
#  sex                :string
#  birth_date         :date
#  full_address       :string
#  street             :string
#  state              :string
#  city               :string
#  country            :string
#  latitude           :float
#  longitude          :float
#  presentation       :text
#  marital_status     :string
#  height             :float
#  weight             :float
#  eyes               :string
#  hair               :string
#  sexual_orientation :string
#  occupation         :string
#  astrology          :string
#  religion           :string
#  nationality        :string
#  purpose            :string
#  user_id            :bigint           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
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
