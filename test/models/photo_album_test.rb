# == Schema Information
#
# Table name: photo_albums
#
#  id          :bigint           not null, primary key
#  uid         :string
#  title       :string
#  description :string
#  size        :integer
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class PhotoAlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
