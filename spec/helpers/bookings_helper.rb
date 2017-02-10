def book_room(room: 'room_1',from: Time.new(2017,1,1),to: Time.new(2017,1,1))
  select_room room
  fill_in :from, with: from
  fill_in :to, with: to
  click_button "Book"
end
