json.array!(@rooms) do |room|
  json.extract! room, :id, :room_name, :inactive, :building_id
  json.url room_url(room, format: :json)
end
