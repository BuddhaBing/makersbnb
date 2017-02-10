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
