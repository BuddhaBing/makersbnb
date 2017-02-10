feature "Book a room" do
  scenario "Select a room from list of rooms" do
    create_users_and_room
    select_room
    expect(page).to have_content Room.first.name
  end

  scenario "request dates and room" do
    create_users_and_room
    book_room
    expect(page).to have_content Room.first.name
  end
end
