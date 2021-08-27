json.extract! review, :id, :voto, :author_id, :test, :created_at, :updated_at
json.url review_url(review, format: :json)
