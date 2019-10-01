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


l1 = Location.create(city: "New York", state: "New York", country: "USA", zipcode: 10011)
l2 = Location.create(city: "Miami", state: "Florida", country: "USA", zipcode: 32963)

cat1 = Category.create(name: "Music")
cat2 = Category.create(name: "Art")
cat3 = Category.create(name: "Sports")
cat4 = Category.create(name: "Nightlife")

e1 = Event.create(user_id: 1, location_id: 1, title: "Some title of event", start_time: "10:00AM", end_time: "1:00PM", event_date: "10-10-2019")

ec1 = EventCategory.create(event_id: 1, category_id: 1)

puts "It had been seeded!"