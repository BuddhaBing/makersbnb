describe Room do
  
  let!(:room) do
    Room.create(name: "new_room",
                address: "1 Fake Road, Fakesville, Notrealshire, FA43 123",
                description: "Lovely non-existant location, very quiet",
                price: 500)
  end

  let!(:date1) do
    Calendardate.create(date: Date.new(2017,02,10))
  end
  
  let!(:date2) do
    Calendardate.create(date: Date.new(2017,02,27))
  end
  
  before do
    dates = [date1, date2]
    dates.each { |d| room.calendardates << d }
    room.save
  end
  
  it 'can return dates that it is booked' do
    expect(room.dates_booked).to eq([date1, date2])
  end
end