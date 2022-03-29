class PhotoAlbumSerializer < ActiveModel::Serializer
  attributes :id, :uid, :title, :description, :size
  has_one :user
end
