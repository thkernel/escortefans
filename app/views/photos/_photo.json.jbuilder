json.extract! photo, :id, :uid, :photo_album_id, :aption, :large_source, :small_source, :medium_source, :link, :user_id, :status, :created_at, :updated_at
json.url photo_url(photo, format: :json)
