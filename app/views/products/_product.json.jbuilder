json.extract! product, :id, :name, :price, :availability, :description, :state, :image, :local_id, :created_at, :updated_at
json.url product_url(product, format: :json)