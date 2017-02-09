feature "display bookings I've made" do
  #waiting on being able to make bookings
  scenario "I can see bookings I've made" do
    bookings_made
    expect(page).to have_content("Trump Towers")
  end
end

feature "display bookings I've received" do
  #waiting on being able to make bookings
  scenario "I can see bookings for my rooms" do
    bookings_received
    expect(page).to have_content("The Penthouse")
  end
end
