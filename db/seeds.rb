# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

EventCategory.destroy_all
Event.destroy_all
User.destroy_all
Category.destroy_all
Location.destroy_all

u1 = User.create(first_name: "Karina", last_name: "Macancela", username: "kmac", password: "kmac")
u2 = User.create(first_name: "Kim", last_name: "Jones", username: "kjones", password: "kjones")
u3 = User.create(first_name: "James", last_name: "Kim", username: "james", password: "james")
u4 = User.create(first_name: "Belle", last_name: "P", username: "belle", password: "belle")

l1 = Location.create(city: "New York", state: "New York", country: "USA", zipcode: 10011)
l2 = Location.create(city: "Miami", state: "Florida", country: "USA", zipcode: 32963)
l3 = Location.create(city: "Bangkok", state: nil , country: "Thailand", zipcode: 10110)
l4 = Location.create(city: "Paris", state: nil, country: "France", zipcode: 75007)
l5 = Location.create(city: "Los Angeles", state: "California", country: "USA", zipcode: 90001)


cat1 = Category.create(name: "Music")
cat2 = Category.create(name: "Art")
cat3 = Category.create(name: "Sports")
cat4 = Category.create(name: "Nightlife")

e1 = Event.create(user_id: u4.id, location_id: l2.id, title: "South Beach Bonfire", start_time: "7:00PM", end_time: "11:00PM", event_date: "10-10-2019")
e2 = Event.create(user_id: u1.id, location_id: l1.id, title: "Chelsea Art Gallery Opening Reception", start_time: "6:00PM", end_time: "9:00PM", event_date: "10-10-2019")
e3 = Event.create(user_id: u2.id, location_id: l4.id, title: "Cheese & Wine Festival", start_time: "12:00PM", end_time: "6:00PM", event_date: "10-10-2019")
e4 = Event.create(user_id: u1.id, location_id: l5.id, title: "Rooftop Party", start_time: "10:00PM", end_time: "4:00AM", event_date: "10-12-2019")
e5 = Event.create(user_id: u3.id, location_id: l3.id, title: "Cooking Class", start_time: "1:00PM", end_time: "4:00PM", event_date: "10-12-2019")

ec1 = EventCategory.create(event_id: 1, category_id: 1)

puts "It had been seeded!"