json.extract! user_view, :id, :uid, :user_id, :created_at, :updated_at
json.url user_view_url(user_view, format: :json)
