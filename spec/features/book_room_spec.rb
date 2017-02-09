feature "Book a room" do
  scenario "Select a room from list of rooms" do
    select_room
    expect(page).to have_content Room.first.name
  end

  scenario "request dates and room" do
    book_room
    expect(page).to have_content Room.first.name
  end
end
