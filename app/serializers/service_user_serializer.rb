class ServiceUserSerializer < ActiveModel::Serializer
  attributes :id
  has_one :service
  has_one :user
end
