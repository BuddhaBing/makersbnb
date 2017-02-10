def book_room
  select_room
  fill_in :from, with: "2017-02-09"
  fill_in :to, with: "2017-02-10"
  click_button "Book"
end

def check_pending_bookings
  book_room
  sign_out
  sign_in
  click_link("My Bookings")
end
