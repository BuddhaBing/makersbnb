feature "display bookings I've made" do
  scenario "I can see bookings I've made" do
    #
    #User 1 signs up and lists a room
    sign_up
    list_room(name: "Trump Towers")
    visit('/')
    sign_out
    #User 2 signs up and books the room
    sign_up(username: "test02",
            email: "test02@test.com")
    make_booking
    click_link("My Bookings")
    expect(page).to have_content("Trump Towers")
  end
end

feature "display bookings I've received" do
  scenario "I can see bookings for my rooms" do
    #User 1 signs up and lists a room
    sign_up
    list_room(name: "The Penthouse")
    visit('/')
    sign_out
    #User 2 signs up and books the room
    sign_up(username: "test02",
            email: "test02@test.com")
    make_booking
    sign_out
    #User 1 signs in and checks bookings page
    sign_in
    click_link("My Bookings")
    expect(page).to have_content("The Penthouse")
  end
end
    