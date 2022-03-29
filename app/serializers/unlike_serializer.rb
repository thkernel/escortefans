class UnlikeSerializer < ActiveModel::Serializer
  attributes :id, :uid, :remove_at
  has_one :sender
  has_one :recipient
end
