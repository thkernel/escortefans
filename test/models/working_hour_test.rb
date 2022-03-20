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

require 'test_helper'

class WorkingHourTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
