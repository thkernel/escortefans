# == Schema Information
#
# Table name: social_links
#
#  id         :bigint           not null, primary key
#  uid        :string
#  name       :string
#  url        :string
#  icon       :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SocialLinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
