json.extract! movie, :id, :name, :url, :user_id, :public, :created_at, :updated_at
json.url movie_url(movie, format: :json)
