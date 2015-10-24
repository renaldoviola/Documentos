json.array!(@api_v1_menus) do |api_v1_menu|
  json.extract! api_v1_menu, :id
  json.url api_v1_menu_url(api_v1_menu, format: :json)
end
