json.array!(@people) do |person|
  json.extract! person, :id, :netid, :first_name, :middle_name, :last_name, :phone, :email, :inactive
  json.url person_url(person, format: :json)
end
