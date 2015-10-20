json.array!(@establishments) do |json, establishment|
  json.(establishment, :id, :name, :city, :state, :neighborhood, :address, :zipcode, :avatar, :status, :creation)
    json.menus establishment.menus do |json, menu|
        json.(@menu, :id, :data, :weekday, :price, :status, :establishment_id)
            json.array!(@items) do |item|
            json.extract! item, :id, :plate, :status
        end
    end
end