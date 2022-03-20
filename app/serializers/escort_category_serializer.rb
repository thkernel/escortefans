# == Schema Information
#
# Table name: escort_categories
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

class EscortCategorySerializer < ActiveModel::Serializer
  attributes :id, :uid, :name, :description, :status
  has_one :user
end
