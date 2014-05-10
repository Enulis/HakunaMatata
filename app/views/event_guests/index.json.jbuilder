json.array!(@event_guests) do |event_guest|
  json.extract! event_guest, :id, :integer, :integer
  json.url event_guest_url(event_guest, format: :json)
end
