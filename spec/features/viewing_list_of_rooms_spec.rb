feature 'Viewing rooms' do
  scenario 'As a user, I can see a list of rooms' do
    sign_up
    list_room
    visit ('/rooms')
    expect(page).to have_content 'The Penthouse'
    expect(page).to have_content '1 Fake Road, Fakesville, Notrealshire, FA43 123'
    expect(page).to have_content 'Lovely non-existant location, very quiet'
  end
end
