class LangueSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name
  has_one :user
end
