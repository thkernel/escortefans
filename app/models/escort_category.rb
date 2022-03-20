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

class EscortCategory < ApplicationRecord
  belongs_to :user
  belongs_to :profile
end
