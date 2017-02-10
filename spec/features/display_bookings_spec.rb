feature "display bookings I've made" do
  scenario "I can see bookings I've made" do
    book_room
    expect(page).to have_content("Trump Towers")
  end
end

feature "display bookings I've received" do
  scenario "I can see bookings for my rooms" do
    check_pending_bookings
    expect(page).to have_content("Trump Towers")
  end
end
