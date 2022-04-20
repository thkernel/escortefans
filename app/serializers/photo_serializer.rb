# == Schema Information
#
# Table name: photos
#
#  id             :bigint           not null, primary key
#  uid            :string
#  photo_album_id :bigint
#  caption        :string
#  description    :text
#  user_id        :bigint
#  status         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :uid, :aption, :large_source, :small_source, :medium_source, :link, :status
  has_one :photo_album
  has_one :user
end
