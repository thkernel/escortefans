# == Schema Information
#
# Table name: unlikes
#
#  id         :bigint           not null, primary key
#  uid        :string
#  unliker_id :bigint
#  unliked_id :bigint
#  removed_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UnlikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
