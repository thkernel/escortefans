json.extract! photo_album, :id, :uid, :title, :description, :size, :user_id, :created_at, :updated_at
json.url photo_album_url(photo_album, format: :json)
