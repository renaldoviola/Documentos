json.array!(@establishments) do |json, establishment|
  json.(establishment, :id, :name, :city, :state, :neighborhood, :address, :zipcode, :avatar, :status, :creation)
    json.array!(@menus) do |json, menu|
        json.menus establishment.menus do |json, menu|
            json.(@menu, :id, :data, :weekday, :price, :status, :establishment_id)
        end
    end
end