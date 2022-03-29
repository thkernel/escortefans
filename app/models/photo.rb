class Photo < ApplicationRecord
  belongs_to :photo_album
  belongs_to :user
end
