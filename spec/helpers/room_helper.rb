def list_room(name: "billy")
  visit '/rooms/new'
  fill_in :name, with: name
  fill_in :address,   with: '1 Fake Road, Fakesville, Notrealshire, FA43 123'
  fill_in :description, with: 'Lovely non-existant location, very quiet'
  fill_in :price, with: '500'
  click_button 'List Room'
end

def create_users_and_room
  sign_up
  list_room(name: "Trump Towers")
  sign_out
  sign_up(username: 'test02',
          email: 'test02@test.com')
  visit('/rooms/search')
end

def select_room(room = "room_1")
  click_link (room)
end

def add_dates(room: Room.first,
              start_date: Time.new(2016,1,1),
              end_date: Time.new(2016,1,1))
  date = DateRange.first_or_create(start_date: start_date,
                                   end_date: end_date)
  room.date_ranges << date
  room.save
end
