json.extract! tweetaro, :id, :content, :created_at, :updated_at
json.url tweetaro_url(tweetaro, format: :json)
