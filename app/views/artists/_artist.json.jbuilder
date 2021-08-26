json.extract! artist, :id, :name, :genre, :tag1, :tag2, :tag3, :created_at, :updated_at
json.url artist_url(artist, format: :json)
