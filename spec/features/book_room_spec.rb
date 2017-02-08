feature "Book a room" do
  #waiting on being able to make bookings
  scenario "Select a room from list of rooms" do
    select_room
    expect(page).to have_content("Trump Towers")
  end

  scenario "request dates and room" do
    book_room
    expect(page).to have content (#TODO once dates in database implemented)
  end


end
