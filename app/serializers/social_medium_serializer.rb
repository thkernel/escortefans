class SocialMediumSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :url
  has_one :user
end
