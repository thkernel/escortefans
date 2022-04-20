# == Schema Information
#
# Table name: user_views
#
#  id         :bigint           not null, primary key
#  uid        :string
#  number     :integer          default(0)
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserViewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
