json.extract! user, :id, :name, :hp, :credits, :created_at, :updated_at
json.url user_url(user, format: :json)
