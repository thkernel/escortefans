# == Schema Information
#
# Table name: unlikes
#
#  id         :bigint           not null, primary key
#  uid        :string
#  unliker_id :bigint
#  unliked_id :bigint
#  removed_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UnlikeSerializer < ActiveModel::Serializer
  attributes :id, :uid, :remove_at
  has_one :sender
  has_one :recipient
end
