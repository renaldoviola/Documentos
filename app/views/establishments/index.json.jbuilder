json.array!(@establishments) do |establishment|
  json.extract! establishment, :id, :name, :city, :state, :neighborhood, :address, :zipcode, :avatar, :status, :creation
  json.url establishment_url(establishment, format: :json)
end
