json.extract! password_manager, :id, :name, :password, :created_at, :updated_at
json.url password_manager_url(password_manager, format: :json)
