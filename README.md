# README

Google Calendar API: https://developers.google.com/calendar/overview
	Token: 4/rgFPiNwanBB6NQvJVewsIDtnkDrZjl62WW8DwmCu7jUfD0vH9mlEvcE
Stubhub API: https://beta-developer.stubhub.com/searchlocations/apis/get/search/locations/v3


** Project must-do’s:
- Create a page for user’s calendar (/events/:id)
- Create a page for user to view available events (/events)
- Create a way for user to add an event to calendar (/events/new)
- Add start_time and end_time (date) to Event table
- Try to incorporate a stylish calendar table
- Try to add Eventbrite or Stubhub API

** Pages we need:
<!-- - Log in page: get ‘/users’ users#index AND redirect to user’s calendar page (show page) -->
- Need to add autentication & authorization to log in page
- Calendar page: (/events/:id)
- Find events page: get ‘/events/:id’ AND post ‘/events/:id’ which redirects to user’s calendar page
- Edit calendar: get ‘/calendar/:id/edit AND post ‘/calendar/:id’ which redirects to user’s calendar page

** Tables:
	User, Event, Category, Event_Category, Location

** Relationships:
	User -< Event
	Location -< Event
	Category >-< Event
	Category -< Event_Category
	Event -< Event_Category

** In plain English:
	User has many Events

	Event belongs to User
	Event belongs to Location
	Event has many Event_Category
	Event has many Categories, through Event_Category

	Location has many Events

	Category has many Event_Category
	Category has many Events, through Event_Category

	Event_Category belongs to Category
	Event_Category belongs to Event


** Need to do: 
<!-- - Remove Calendar table  -->
<!-- - Add start_time, end_time attributes and change time attrubute to event_date in Event table -->
- Remove first_name, last_name from User table
<!-- - Remove password from User table -->
<!-- - Add password_digest to User table -->