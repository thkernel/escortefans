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

class Unlike < ApplicationRecord
  belongs_to :unliker,  :foreign_key => "unliker_id", :class_name => "User"
  belongs_to :unliked,  :foreign_key => "unliked_id", :class_name => "User"
end
