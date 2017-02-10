feature "Confirm a booking " do
  
  before do
    create_users_and_room
    book_room
    sign_out
    sign_in
    click_link ('My Bookings')
  end
  
  let(:bookings_received) { find_by_id("bookings_received") }
  
  scenario "User can confirm a booking made to their room" do
    click_link ('Confirm')
    expect(bookings_received).to_not have_content ('pending')
    expect(bookings_received).to have_content ('accepted')
  end
  
  scenario "User can decline a booking made to their room" do
    click_link ('Decline')
    expect(bookings_received).to_not have_content ('pending')
    expect(bookings_received).to have_content ('declined')
  end
end
