feature "Book a room" do
  scenario "Select a room from list of rooms and view availability" do
    create_users_and_room
    add_dates
    select_room
    room = Room.first
    start_date = format_date(room.date_ranges.first.start_date)
    end_date = format_date(room.date_ranges.first.end_date)
    expect(page).to have_content room.name
    expect(page).to have_content "Available from #{start_date} to #{end_date}"
  end

  scenario "request dates and room" do
    create_users_and_room
    book_room
    expect(page).to have_content Room.first.name
  end
end
