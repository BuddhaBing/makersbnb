describe Room do

  let!(:landlord) do
    User.create(email:    "up@down.com",
    name:      "Jack Black",
    user_name: "jackme",
    password: "12345678",
    password_confirmation: "12345678")
  end

  let!(:renter) do
    User.create(email:    "soon@late.com",
    name:      "Mr. Bean",
    user_name: "comeon",
    password: "12345678",
    password_confirmation: "12345678")
  end

  let!(:availabilty_range) do
    make_date_range(start: Time.new(2016,1,1),
                    ending: Time.new(2016,1,30))
  end

  let!(:room) do
    room = Room.first_or_create(name:    "Trump Towers",
                                address: "Trump Towers, believe me",
                                description: "totally not a cardboard box",
                                price: "50",
                                user: landlord)
    room.date_ranges << availabilty_range
    room.save
    room
  end

  describe "#bookable?" do
    it "can accept valid dates" do
      date_range = make_date_range
      expect(room.bookable? date_range).to be true
    end
    context "rejects bad dates" do
      it "rejects dates totally out of range" do
        date_range = make_date_range(start: Time.new(2016,2,1),
                                     ending: Time.new(2016,2,20))
        expect(room.bookable? date_range).to be false
      end
      it "rejects dates only partially covered" do
        date_range = make_date_range(start: Time.new(2015,1,1),
                                     ending: Time.new(2016,1,30))
        expect(room.bookable? date_range).to be false
      end
    end
  end
end

#
#   let!(:date1) do
#     create_date("2017-02-01")
#   end
#
#   let!(:date2) do
#     create_date("2017-02-02")
#   end
#
#   let!(:date3) do
#     create_date("2017-02-03")
#   end
#
#   let!(:user) do
#     User.create(name: "Michael Jackson",
#                 email: "michael@jackson.com",
#                 user_name: "mj")
#   end
#
#   before do
#     dates = [date1, date2]
#     dates.each { |d| room.calendardates << d }
#     room.save
#
#     user.rooms << room
#     user.save
#   end
#
#   it 'can return dates that it is booked' do
#     expect(room.dates_booked).to eq([date1, date2])
#   end
#
#   it "knows it's owner" do
#     expect(room.owner).to eq user
#   end
#
#   describe "#booked?" do
#
#     it "returns true if it's booked on a certain date" do
#       expect(room.booked?(date1)).to eq true
#     end
#
#     it "returns false if it's not booked" do
#       expect(room.booked?(date3)).to eq false
#     end
#   end
# end
#
# def create_date(date)
#     Calendardate.create(date: Date.parse(date))
# end
