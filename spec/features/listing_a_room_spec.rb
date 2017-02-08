feature 'Listing a room' do
  scenario 'As a landlord, I can list a new room when signed in' do
    sign_up
    expect{list_room}.to change(Room, :count).by(1)
    expect(page).to have_content 'Room Listed'
  end
  scenario 'I cannot list a new room when not signed in' do
    expect(page).not_to have_button 'New Room'
  end
end
