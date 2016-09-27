json.extract! local, :id, :name, :description, :state, :user_id, :created_at, :updated_at
json.url local_url(local, format: :json)