json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :telephone, :address, :web
  json.url restaurant_url(restaurant, format: :json)
end
