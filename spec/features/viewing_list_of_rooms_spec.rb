feature 'Viewing rooms' do
  scenario 'As a user, I can see a list of rooms' do
    sign_up
    list_room
    visit ('/rooms')
    expect(page).to have_content Room.first.name
    expect(page).to have_content Room.first.address
    expect(page).to have_content Room.first.description
  end
end
