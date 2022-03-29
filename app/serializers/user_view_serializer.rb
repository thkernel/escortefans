class UserViewSerializer < ActiveModel::Serializer
  attributes :id, :uid
  has_one :user
end
