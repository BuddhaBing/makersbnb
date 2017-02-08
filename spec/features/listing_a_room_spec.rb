feature 'Listing a room' do
  scenario 'As a landlord, I can list a new room when signed in' do
    sign_up
    expect(page).to have_link 'List a Room'
    expect{list_room}.to change(Room, :count).by(1)
    expect(page).to have_content 'Room Listed'

  end
  scenario 'I cannot list a new room when not signed in' do
    expect(page).not_to have_button 'List a Room'
  end
end
