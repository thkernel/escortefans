# == Schema Information
#
# Table name: services
#
#  id          :bigint           not null, primary key
#  uid         :string
#  name        :string
#  description :text
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :price, :description, :status
  has_one :user
end
