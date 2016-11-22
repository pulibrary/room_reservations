json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :rdate, :start_time, :end_time, :duration, :name, :note, :expected_attendance, :tentative, :recurring, :approved, :person_id, :room_id
  json.url reservation_url(reservation, format: :json)
end
