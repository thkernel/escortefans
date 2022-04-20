# == Schema Information
#
# Table name: likes
#
#  id         :bigint           not null, primary key
#  uid        :string
#  liker_id   :bigint
#  liked_id   :bigint
#  removed_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LikeSerializer < ActiveModel::Serializer
  attributes :id, :uid, :remove_at
  has_one :sender
  has_one :recipient
end
