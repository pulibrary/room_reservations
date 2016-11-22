# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Room.delete_all
Building.delete_all
Person.delete_all
Reservation.delete_all

b1 = Building.create!(building_name: "Firestone")
b1.rooms.create([
  {room_name: "Electronic Classroom 1 (A-6-F)", inactive: false},
  {room_name: "Electronic Classroom 2 (B-6-F)", inactive: false},
  {room_name: "Electronic Classroom 3 (B-6-H)", inactive: false},
  {room_name: "Multi-purpose Room", inactive: false}
])

b2 = Building.create!(building_name: "Wallace Hall")
b2.rooms.create([{room_name: "Stokes Library Classroom", inactive: false}])

b3 = Building.create!(building_name: "Friend Center")
b3.rooms.create([
  {room_name: "Engineering Library Group Study Room 302", inactive: false},
  {room_name: "Engineering Library Group Study Room 303", inactive: false}
])

Person.create([
	{netid: "buser", first_name: "Gary", last_name: "Buser", email: "buser@princeton.edu", inactive: false},
	{netid: "tmincher", first_name: "Tracy", last_name: "Hall", email: "tmincher@princeton.edu", inactive: false}
])


