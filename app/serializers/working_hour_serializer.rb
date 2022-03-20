# == Schema Information
#
# Table name: working_hours
#
#  id          :bigint           not null, primary key
#  uid         :string
#  working_day :string
#  start_hour  :time
#  end_hour    :time
#  status      :string
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class WorkingHourSerializer < ActiveModel::Serializer
  attributes :id, :uid, :day, :start_hour, :end_hour, :status
  has_one :user
end
