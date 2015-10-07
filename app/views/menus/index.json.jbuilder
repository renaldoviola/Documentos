json.array!(@menus) do |menu|
  json.extract! menu, :id, :data, :weekday, :price, :status, :establishment_id
  json.url menu_url(menu, format: :json)
end
