json.extract! service, :id, :uid, :name, :price, :description, :status, :user_id, :created_at, :updated_at
json.url service_url(service, format: :json)
