feature 'Listing a room' do
  scenario 'As a landlord, I can list a new room when signed in' do
    # sign_up TODO: uncomment this when signup works
    # expect(page).to have_button 'New Room' TODO: uncomment this when signup works and welcome.slim has this button
    list_room
    expect(page).to have_content 'Room Listed'
  end
  scenario 'I cannot list a new room when not signed in' do
    expect(page).not_to have_button 'New Room'
  end
end
