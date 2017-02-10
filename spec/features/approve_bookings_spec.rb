feature "Confirm a booking " do
  scenario "User can confirm a booking made to their room" do
    create_users_and_room
    book_room
    sign_out
    sign_in
    click_link ('My Bookings')
    click_link ('Accept')
     bookings_received = find_by_id("bookings_received")
     expect(bookings_received).to_not have_content ('pending')
    expect(bookings_received).to have_content ('accepted')
  end
end
