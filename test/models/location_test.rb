# == Schema Information
#
# Table name: locations
#
#  id           :bigint           not null, primary key
#  uid          :string
#  full_address :string
#  street       :string
#  state        :string
#  city         :string
#  country      :string
#  phone_number :string
#  latitude     :float
#  longitude    :float
#  user_id      :bigint
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
