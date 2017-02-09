def list_room(name: "billy")
  visit '/rooms/new'
  fill_in :name, with: name
  fill_in :address,   with: '1 Fake Road, Fakesville, Notrealshire, FA43 123'
  fill_in :description, with: 'Lovely non-existant location, very quiet'
  fill_in :price, with: '500'
  click_button 'List Room'
end

def select_room
  sign_up
  list_room(name: "Trump Towers")
  sign_out
  sign_up(username: 'test02',
          email: 'test02@test.com')
  visit('/rooms')
  click_link ('room_1')
end

def book_room
select_room
fill_in :from, with: "2017-02-09"
fill_in :to, with: "2017-02-10"
click_button "Book"
end
