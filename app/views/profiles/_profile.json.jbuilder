json.extract! profile, :id, :lastname, :mother_lastname, :email, :dni, :telephone, :photo, :state, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)