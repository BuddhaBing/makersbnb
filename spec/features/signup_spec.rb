# As a user
# So that I can register to use Makersbnb
# I would like to be able to sign up
require_relative 'web_helper'

feature "Registration of a new user" do
  scenario 'I can sign up as a new user' do
    visit '/'
    sign_up
    # expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Hello Makersbnb!')
    # expect(User.first.email).to eq('test@test.com')
  end
# Fills in an email and password into the user signup form.
# Fills in a mismatching confirmation password into the user signup form.
# Checks that when the form is submitted, no new users are created.
  scenario 'Requires a matching confirmation password' do
    expect { sign_up(password_confirmation: 'wrong') }.not_to change(User, :count)
    expect(current_path).to eq('/users')
    expect(page).to have_content('Password and confirmation password do not match')
  end

  scenario 'User cannot sign up without an email address' do
    expect { sign_up(email: nil) }.not_to change(User, :count)
  end
end
