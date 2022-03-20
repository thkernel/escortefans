# == Schema Information
#
# Table name: social_links
#
#  id         :bigint           not null, primary key
#  uid        :string
#  name       :string
#  url        :string
#  icon       :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SocialLinkSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :url
  has_one :user
end
