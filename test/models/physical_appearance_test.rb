# == Schema Information
#
# Table name: physical_appearances
#
#  id         :bigint           not null, primary key
#  uid        :string
#  height     :float            default(0.0)
#  weight     :float            default(0.0)
#  corpulence :string
#  eye        :string
#  hair       :string
#  user_id    :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PhysicalAppearanceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
