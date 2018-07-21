json.extract! video, :id, :name, :url, :format, :file, :created_at, :updated_at
json.url video_url(video, format: :json)
