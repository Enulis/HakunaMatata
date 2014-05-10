json.array!(@events) do |event|
  json.extract! event, :id, :adminID, :date, :lon, :lat
  json.url event_url(event, format: :json)
end
