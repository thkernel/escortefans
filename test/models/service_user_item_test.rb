# == Schema Information
#
# Table name: service_user_items
#
#  id              :bigint           not null, primary key
#  uid             :string
#  service_user_id :bigint
#  service_id      :bigint
#  price           :float
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class ServiceUserItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
