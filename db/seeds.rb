# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Attendee.destroy_all
Event.destroy_all
User.destroy_all
Category.destroy_all
Location.destroy_all

u1 = User.create(first_name: "Karina", last_name: "Macancela", username: "kmac", password: "kmac")
u2 = User.create(first_name: "Rachel", last_name: "Smith", username: "rsmith", password: "rsmith")
u3 = User.create(first_name: "Mason", last_name: "Gianni", username: "mason", password: "mason")
u4 = User.create(first_name: "Belle", last_name: "P", username: "belle", password: "belle")

l1 = Location.create(city: "New York", state: "New York", country: "USA", zipcode: 10011)
l2 = Location.create(city: "Miami", state: "Florida", country: "USA", zipcode: 32963)
l3 = Location.create(city: "Bangkok", state: nil , country: "Thailand", zipcode: 10110)
l4 = Location.create(city: "Paris", state: nil, country: "France", zipcode: 75007)
l5 = Location.create(city: "Los Angeles", state: "California", country: "USA", zipcode: 90001)
l6 = Location.create(city: "Honolulu", state: "Hawaii", country: "USA", zipcode: 39525)
l7 = Location.create(city: "Ibiza", state: nil, country: "Spain", zipcode: 87800)
l8 = Location.create(city: "Rome", state: nil, country: "Italy", zipcode: 88100)
l9 = Location.create(city: "London", state: nil, country: "England", zipcode: nil)
l10 = Location.create(city: "Mykonos", state: nil, country: "Greece", zipcode: 84600)
l11 = Location.create(city: "Las Vegas", state: "Nevada", country: "USA", zipcode: 88901)


cat1 = Category.create(name: "Music")
cat2 = Category.create(name: "Art")
cat3 = Category.create(name: "Sports")
cat4 = Category.create(name: "Nightlife")
cat5 = Category.create(name: "Community")
cat6 = Category.create(name: "Lifestyle")
cat7 = Category.create(name: "Food & Drink")


e1 = Event.create(location_id: l2.id, title: "South Beach Bonfire", event_date: "10-10-2019", category_id: cat5.id, content: "Summer is officially over and we need to celebrate it the true Miami way. $50 unlimited tequila shots and beer. It's about to get wild up in here. No shoes, no shirts, no problem.")
e2 = Event.create(location_id: l1.id, title: "Chelsea Art Gallery Opening Reception",event_date: "10-10-2019", category_id: cat2.id, content: "Opening reception of Yayoi Kusama's well-anticipated exhibit, 'Love is a Chemical Reaction in the Brain.' Come early as there will be a line, like her past Infinity Mirrors exhibit.")
e3 = Event.create(location_id: l4.id, title: "Cheese & Wine Festival",event_date: "10-10-2019", category_id: cat6.id, content: "Sample homegrown gourmet French cheeses and indulge in unlimited tastings of French wine. Over 20 vendors will take over Arc de Triomphe for this festival.")
e4 = Event.create(location_id: l5.id, title: "Rooftop Fashion Party",event_date: "10-12-2019", category_id: cat4.id, content: "Time to get decked out in your designer duds and jewels for this exclusive rooftop event. Guest appearances by KimYe, Lady Gaga, and OG Paris Hilton.")
e5 = Event.create(location_id: l3.id, title: "Thai Cooking Class",event_date: "10-12-2019", category_id: cat7.id, content: "Never again do you have to subject yourself to flavorless, mundane Pad Thai from the bootleg Thai restaurant down your block. From 2-5 pm, learn how to cook authentic Thai staple dishes from your kitchen.")
e6 = Event.create(location_id: l6.id, title: "Diamond Head Hike",event_date: "10-13-2019", category_id: cat6.id, content: "Join our Adventurers group and get your morning start with a revitilizing hike up the famous scenic Diamond Head landmark.")
e7 = Event.create(location_id: l1.id, title: "Halloween Masquerade 2019",event_date: "10-26-2019", category_id: cat4.id, content: "Celebrate Hallow's Eve with mysterious masked strangers and imbibe designer spooky libations at the glamorous Gotham hall. Costumes mandatory, dress to impress.")
e8 = Event.create(location_id: l10.id, title: "Poolside Sessions",event_date: "11-08-2019", category_id: cat1.id, content: "Resident DJ Pinkie Smalls is in the house spinning throwback EDM hits. Entry is free until 11. Sun loungers are extra but certainly worth it if you care to sunbathe like a boss.")
e9 = Event.create(location_id: l7.id, title: "Cassy's Play House",event_date: "11-02-2019", category_id: cat4.id, content: "Come in and hang out, enjoy music, dance, sweat, listen, whatever you please. There are no expectations in the PLAY HOUSE, just an energy where anything goes.")
e10 = Event.create(location_id: l8.id, title: "Renaissance Art Walk",event_date: "11-09-2019", category_id: cat2.id, content: "Join us for a walking tour throughout Rome and discover the influences of the beautiful Renaissance period.")
e11 = Event.create(location_id: l9.id, title: "Shakespearean Pub Crawl",event_date: "11-16-2019", category_id: cat4.id, content: "Dress up as your favorite Shakespearan character as we visit every pub in Central London.")
e12 = Event.create(location_id: l11.id, title: "New Year's Eve",event_date: "12-31-2019", category_id: cat4.id, content: "Ring in the New Year at MGM Grand! $500 admission includes open bar and unlimited slots from 9-11pm. Guest Performers: Drake, Tiesto, Taylor Swift.")

a1 = Attendee.create(user_id: 1, event_id: 1)
a2 = Attendee.create(user_id: 3, event_id: 3)
a3 = Attendee.create(user_id: 4, event_id: 5)
a4 = Attendee.create(user_id: 4, event_id: 8)
a5 = Attendee.create(user_id: 4, event_id: 11)
a6 = Attendee.create(user_id: 2, event_id: 5)

p1 = Post.create(event_id: 1, user_id: 1, post_date: "29-10-2019", post_time: "10:00AM", content: "Anyone else going to this?")

puts "It had been seeded!"