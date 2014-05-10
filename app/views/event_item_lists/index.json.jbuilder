json.array!(@event_item_lists) do |event_item_list|
  json.extract! event_item_list, :id, :event, :supply_item, :count
  json.url event_item_list_url(event_item_list, format: :json)
end
