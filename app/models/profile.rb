# == Schema Information
#
# Table name: profiles
#
#  id                 :bigint           not null, primary key
#  uid                :string
#  first_name         :string
#  last_name          :string
#  nickname           :string
#  sex                :string
#  birth_date         :date
#  escort_category_id :bigint
#  nationality        :string
#  presentation       :text
#  marital_status     :string
#  sexual_orientation :string
#  occupation         :string
#  astrology          :string
#  religion           :string
#  ethnicity          :string
#  purpose            :string
#  available          :string
#  alcohol            :string
#  smoking            :string
#  user_id            :bigint           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Profile < ApplicationRecord
  

  include SharedUtils::Generate

  before_save :generate_random_number_uid
  
  belongs_to :user
  belongs_to :escort_category

  has_one_attached :avatar


  def full_name
    "#{first_name} #{last_name}"
  end


  # Change default params ID to uid
  def to_param
    uid
  end
end
