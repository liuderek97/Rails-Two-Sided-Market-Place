json.extract! profile, :id, :name, :bio, :type, :abn, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
