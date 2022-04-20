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

class Photo < ApplicationRecord
  belongs_to :photo_album, optional: true
  belongs_to :user
end
