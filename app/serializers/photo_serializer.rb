class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :uid, :aption, :large_source, :small_source, :medium_source, :link, :status
  has_one :photo_album
  has_one :user
end
