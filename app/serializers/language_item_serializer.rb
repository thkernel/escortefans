# == Schema Information
#
# Table name: language_items
#
#  id          :bigint           not null, primary key
#  uid         :string
#  language_id :bigint
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class LanguageItemSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name
  has_one :language
end
