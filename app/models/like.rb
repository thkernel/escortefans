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

class Like < ApplicationRecord
  belongs_to :liker,  :foreign_key => "liker_id", :class_name => "User"
  belongs_to :liked,  :foreign_key => "liked_id", :class_name => "User"
  
end
