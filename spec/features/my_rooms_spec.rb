feature "My rooms link shows the rooms I own" do
  scenario "I can see my rooms" do
    sign_up
    list_room(name: "Trump Towers")
    click_link("My Rooms")
    expect(page).to have_content("Trump Towers")
  end
end