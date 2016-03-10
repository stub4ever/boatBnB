# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Boat.destroy_all
Booking.destroy_all
BoatReview.destroy_all

puts "creating users"


jan = User.create!(first_name: "Jan", last_name: "Janssen", email: "jan@piet.nl", password: "12345678", phone_number: "4444", city: "Amsterdam", address: "Vondelpark 8")
klaas = User.create!(first_name: "Klaas", last_name: "Janssen", email: "klaas@piet.nl", password: "12345678", phone_number: "4444", city: "Amsterdam", address: "Vondelpark 8")
alice = User.create!(first_name: "Alice", last_name: "Janssen", email: "alice@piet.nl", password: "12345678", phone_number: "4444", city: "Amsterdam", address: "Vondelpark 8")
melchior = User.create!(first_name: "Melchior", last_name: "R", email: "m@r.com", password: "12345678", phone_number: "4444", city: "Nijmegen", address: "Heyendaalseweg 8")
rianne = User.create!(first_name: "Rianne", last_name: "W", email: "r@w.com", password: "12345678", phone_number: "4444", city: "Amsterdam", address: "Heyendaalseweg 8")


puts "creating boats"

draak = Boat.create!(owner: jan, name: "Draak", description: "Mooi bootje voor gezellig dagje weg met familie", category: "speedboot", photo: "http://tinyurl.com/hozlwtx", size: 4, address:"ijspadbaan", city: "amsterdam", price: 150)
vlinder = Boat.create!(owner: alice, name: "Vlinder", description: "Mooi bootje voor gezellig dagje weg met familie", category: "sloep", photo: "http://www.gelderlander.nl/polopoly_fs/1.4346871.1399312047!/image/image.JPG_gen/derivatives/landscape_800_600/image-4346871.JPG", size: 4, address:"ijspadbaan", city: "amsterdam", price: 150)
vlinder = Boat.create!(owner: alice, name: "Vlinder", description: "Mooi bootje voor gezellig dagje weg met familie", category: "sloep", photo: "http://www.gelderlander.nl/polopoly_fs/1.4346871.1399312047!/image/image.JPG_gen/derivatives/landscape_800_600/image-4346871.JPG", size: 4, address:"ijspadbaan", city: "amsterdam", price: 150)


puts "creating booking"

a = Booking.create!(boat: draak, check_in_date: "2016-3-19", check_out_date: "2016-3-20", description: "Graag voor 3 mensen", status: "PENDING", owner: jan, renter: klaas)

puts "creating boat reviews"

# rev = BoatReview.create!(rating: 3, description: 41* "a", booking_id: 3)

puts "users, boats, bookings, boat review created!"
