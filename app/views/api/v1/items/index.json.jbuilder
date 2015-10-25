json.array!(@api_v1_items) do |api_v1_item|
  json.extract! api_v1_item, :id
  json.url api_v1_item_url(api_v1_item, format: :json)
end
