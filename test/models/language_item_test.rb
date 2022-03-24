# == Schema Information
#
# Table name: language_items
#
#  id          :bigint           not null, primary key
#  uid         :string
#  language_id :bigint
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class LanguageItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
