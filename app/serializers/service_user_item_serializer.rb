# == Schema Information
#
# Table name: service_user_items
#
#  id              :bigint           not null, primary key
#  uid             :string
#  service_user_id :bigint
#  service_id      :bigint
#  price           :float
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class ServiceUserItemSerializer < ActiveModel::Serializer
  attributes :id, :uid, :price
  has_one :service_user
  has_one :service
end
