# == Schema Information
#
# Table name: languages
#
#  id         :bigint           not null, primary key
#  uid        :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LanguageSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name
  has_one :user
end
