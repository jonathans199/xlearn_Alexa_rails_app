json.extract! user, :id, :fullname, :email, :course, :created_at, :updated_at
json.url user_url(user, format: :json)
