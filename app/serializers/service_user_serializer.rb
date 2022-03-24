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

class ServiceUserSerializer < ActiveModel::Serializer
  attributes :id
  has_one :service
  has_one :user
end
