json.array!(@buildings) do |building|
  json.extract! building, :id, :building_name
  json.url building_url(building, format: :json)
end
