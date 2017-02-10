describe User do
  it "password check returns true when 8 chars or more" do
    user = User.create( email:                  "up@down.com",
                        name:                   "Jack Black",
                        user_name:              "jackme",
                        password:               "12345678",
                        password_confirmation:  "12345678")
    expect(user.password_requirements_check).to eq true
  end
  
  it "password check returns false when under 8 chars" do
    user = User.create( email:                  "small@pass.com",
                        name:                   "Stupid User",
                        user_name:              "SU",
                        password:               "1234",
                        password_confirmation:  "1234")
    expect(user.password_requirements_check).to eq false
  end
end