json.extract! profile, :id, :uid, :first_name, :last_name, :civility, :address, :phone, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
