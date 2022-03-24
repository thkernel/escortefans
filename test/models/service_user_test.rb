# == Schema Information
#
# Table name: service_users
#
#  id         :bigint           not null, primary key
#  uid        :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ServiceUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
