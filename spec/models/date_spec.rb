describe Date do
  let!(:date) do
    make_date_range(start: Time.new(2016,1,1),
                    ending: Time.new(2016,1,30))
  end
  describe "#overlaps?" do
    it "reports complete coverage" do
      date_2 = make_date_range(start: Time.new(2016,1,29),
                               ending: Time.new(2016,1,29))
      expect(date.overlaps?(date_2)).to be (true)
    end
    it "reports no coverage" do
      date_2 = make_date_range(start: Time.new(2016,2,1),
                               ending: Time.new(2016,2,30))
      expect(date.overlaps?(date_2)).to be (false)
    end
    it "reports false on incomplete coverage" do
      date_2 = make_date_range(start: Time.new(2016,1,1),
                               ending: Time.new(2016,2,20))
      expect(date.overlaps?(date_2)).to be (false)
      date_3 = make_date_range(start: Time.new(2015,1,1),
                               ending: Time.new(2016,1,30))
      expect(date.overlaps?(date_3)).to be (false)
    end
  end
end
