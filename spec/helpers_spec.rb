describe "web Helpers" do
  describe "pretty_money" do
    it "turns an int into pounds and pence" do
      expect(pretty_money(0)).to eq ("0.00")
      expect(pretty_money(5)).to eq ("0.05")
      expect(pretty_money(50)).to eq ("0.50")
      expect(pretty_money(500)).to eq ("5.00")
      expect(pretty_money(5000)).to eq ("50.00")
    end
  end
end
