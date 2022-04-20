# == Schema Information
#
# Table name: photo_albums
#
#  id          :bigint           not null, primary key
#  uid         :string
#  title       :string
#  description :string
#  size        :integer
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PhotoAlbumSerializer < ActiveModel::Serializer
  attributes :id, :uid, :title, :description, :size
  has_one :user
end
