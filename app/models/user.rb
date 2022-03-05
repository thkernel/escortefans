# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  uid                    :string
#  login                  :string
#  role_id                :bigint           not null
#  status                 :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord

	include SharedUtils::Generate
	
  	before_save :generate_random_number_uid

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable




 belongs_to :role
 has_one :profile, dependent: :destroy
 accepts_nested_attributes_for :profile #,  allow_destroy: true

  has_many :engine_categories, dependent: :destroy
  has_many :engines, dependent: :destroy
  has_many :parks, dependent: :destroy
  has_many :maintenance_types, dependent: :destroy
  has_many :maintenances, dependent: :destroy

  # Change default params ID to uid
  def to_param
    uid
  end


  def superuser?
    if self.role.name == "Superuser"
      true 
    else
      false
    end
  end
  
    def admin?
      if self.role.name == "Administrateur"
        true 
      else
        false
      end
    end
  
    def user?
    if self.role.name == "user"
      true 
    else
      false
    end
    end
  
    def guest?
    if self.role.name == "guest"
      true 
    else
      false
    end
    end


end
