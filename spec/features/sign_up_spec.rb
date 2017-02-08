feature "Registration of a new user" do

  scenario 'I can sign up as a new user' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, test')
    expect(User.first.email).to eq('test@test.com')
  end

  scenario 'Requires a matching confirmation password' do
    expect { sign_up(password_confirmation: 'wrong') }.not_to change(User, :count)
    expect(page).to have_content('Password does not match the confirmation')
  end

  scenario 'User cannot sign up without an email address' do
    expect { sign_up(email: nil) }.not_to change(User, :count)
    expect(page).to have_content('Email must not be blank')
  end

  scenario "User can't sign up with the same email address" do
    sign_up
    click_button('Sign out')
    expect { sign_up(username: 'test02') }.not_to change(User, :count)
    expect(page).to have_content "Email is already taken"
  end

  scenario "User can't sign up with the same user name" do
    sign_up
    click_button('Sign out')
    expect { sign_up(email: 'test2@test.com') }.not_to change(User, :count)
    expect(page).to have_content "User name is already taken"
  end
