json.extract! request, :id, :title, :requester_id, :genre, :tag1, :tag2, :tag3, :reference, :description, :created_at, :updated_at
json.url request_url(request, format: :json)
