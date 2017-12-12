json.extract! news_stay, :id, :title, :user_id, :description, :image, :created_at, :updated_at
json.url news_stay_url(news_stay, format: :json)
