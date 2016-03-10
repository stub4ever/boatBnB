#USER STORIES

## As a visitor                                                                                                    .

- I can search for a boat in a city for a given check-in/check-out date
- I can see the details of a boat (price, description, person's, availability, owner) 
- I can sign up 
- I can see general info of the company (contact, about, etc.)
- I can sign-up for newsletter [OPTIONAL]


## As a User                                                                                                       .

- I can login/logout
- I can book a boat 
- I can write a review/rate a boat so that I can share my experience
- I can see contact details of the owner 
- I can see a list of my bookings
- I can view my profile page
- I can receive booked boat conformation (by email)  [OPTIONAL]

## As a Owner                                                                                                    .

- I can add/edit a boat (Title/Description/photos/information/price)
- I can delete my boat that has no booking yet
- I can see a list of my bookings ( including contact/messages/tractions )
- I can review a user that rented
- I can accept or decline a booking request


# MOCK-UPS & ROUTES

As a visitor                                                                                                    .

Home with searchbar // GET
	/
	AS A VISITOR > I can search for a boat in a city for a given check-in/check-out date

Sign-in // GET
AS A USER/VISITOR > I can sign in	

Sign-up // GET
AS A VISITOR > I can sign up	

Boats (after search) // GET	
/boats
	AS A VISITOR > I can list boats with my criteria

Boats show // GET	
/boats/[:id]
	AS A VISITOR > I can see details of  a boat


As a Owner                                                                                                    .

Boat new // GET + POST
	/boats/new + create >> daarna link naar boat show + flash message
	AS An OWNER > I can add a boat	

Boat edit // GET + PUT/PATCH
	/boats/[:boat_id]/edit + update >>  daarna link naar boat show + flash message
	AS An OWNER > I can edit a boat

Boat delete > nb. Alleen button, geen page // DELETE
	/boats/[:id]
	AS An OWNER > I can delete a boat that has no bookings yet

Owner index (list of bookings) // GET
	/bookings
	AS An OWNER > I can see a list of all bookings made to me

Review a renter // POST
	/bookings/[:booking_id]/renter_reviews/new + create > doorlinken naar userpage
	AS An OWNER > I can review a user that rented




Show booking // GET
	/bookings/[:id]
	AS A OWNER > I can accept or decline a booking

Change booking status to accepted // PATCH
	/bookings/[:id]/accept
	AS A OWNER > I can accept a booking

Change booking status to denied // PATCH
	/bookings/[:id]/deny
	AS A OWNER > I can deny a booking



As a User                                                                                                       .

User Profile // GET
	/users/[:id] (public profile)
	/profile (my dashboard)
	AS A USER > I can log-in/log-out
AS A USER > I can see a list of my bookings
	AS A USER > I can view my profile page

Booking Page // GET + POST
	/boats/[:id]/bookings/new + create
	AS A USER > I can book a boat
	
User index (list of bookings) // GET
	/travels
	AS A USER > I can see a list of all my booking requests

Confirmation page // GET
	/bookings/[:booking_id]/confirmation

Review Page // GET + POST
	/bookings/[:booking_id]/user_reviews/new + create
	AS A USER > I can write a review/rate about a boat

Owner Details // GET
	/users/[:id] (public profile)
	/profile (my dashboard)
	AS A USER > I can see contact details of the owner
AS A USER > I can see a list of my bookings
	


