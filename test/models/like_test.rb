# == Schema Information
#
# Table name: likes
#
#  id         :bigint           not null, primary key
#  uid        :string
#  liker_id   :bigint
#  liked_id   :bigint
#  removed_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class LikeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
