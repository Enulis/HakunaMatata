json.array!(@supply_items) do |supply_item|
  json.extract! supply_item, :id, :name, :price
  json.url supply_item_url(supply_item, format: :json)
end
