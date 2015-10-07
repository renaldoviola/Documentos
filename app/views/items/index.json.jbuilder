json.array!(@items) do |item|
  json.extract! item, :id, :plate, :status
  json.url item_url(item, format: :json)
end
