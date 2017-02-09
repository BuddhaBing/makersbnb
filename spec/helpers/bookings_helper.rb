def book_room
  select_room
  fill_in :from, with: "2017-02-09"
  fill_in :to, with: "2017-02-10"
  click_button "Book"
end

def bookings_made
  #User 1 signs up and lists a room
  sign_up
  list_room(name: "Trump Towers")
  visit('/')
  sign_out
  #User 2 signs up and books the room
  sign_up(username: "test02",
          email: "test02@test.com")
  make_booking
  click_link("My Bookings")

end

def bookings_received
  #User 1 signs up and lists a room
  sign_up
  list_room(name: "The Penthouse")
  visit('/')
  sign_out
  #User 2 signs up and books the room
  sign_up(username: "test02",
          email: "test02@test.com")
  make_booking
  sign_out
  #User 1 signs in and checks bookings page
  sign_in
  click_link("My Bookings")

end
