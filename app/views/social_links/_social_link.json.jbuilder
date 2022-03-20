json.extract! social_link, :id, :uid, :name, :url, :user_id, :created_at, :updated_at
json.url social_link_url(social_link, format: :json)
