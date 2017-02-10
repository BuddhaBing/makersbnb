feature "display bookings I've made" do
  scenario "I can see bookings I've made" do
    create_users_and_room
    book_room
    expect(page).to have_content("Trump Towers")
  end
end

feature "display bookings I've received" do
  scenario "I can see bookings for my rooms" do
    create_users_and_room
    book_room
    sign_out
    sign_in
    click_link("My Bookings")
    expect(page).to have_content("Trump Towers")
  end
end
