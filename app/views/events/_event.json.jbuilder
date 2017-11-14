json.extract! event, :id, :venue_id, :artist_id, :date, :time, :created_at, :updated_at
json.url event_url(event, format: :json)
