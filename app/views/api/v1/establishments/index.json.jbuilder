json.array!(@api_v1_establishments) do |api_v1_establishment|
  json.extract! api_v1_establishment, :id
  json.url api_v1_establishment_url(api_v1_establishment, format: :json)
end
