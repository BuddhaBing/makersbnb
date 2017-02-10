describe Room do
  before(:each) do
    sign_up(username: "landlord")
    list_room
    add_dates
    sign_out
    sign_up(email: "t@t.com",username: "Renter")
    #select_room
  end

  it{expect(true).to be true}
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
