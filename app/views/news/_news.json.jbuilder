json.extract! news, :id, :title, :status, :created_at, :updated_at
json.url news_url(news, format: :json)
