class LanguageItemSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name
  has_one :language
end
