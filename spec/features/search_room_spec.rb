feature "I can search for a room" do
  scenario "I can see all rooms by default" do
    create_users_and_room
    expect(page).to have_content("Trump Towers")
  end
end