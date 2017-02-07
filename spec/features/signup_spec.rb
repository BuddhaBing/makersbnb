# require_relative 'web_helper'

feature "Registration of a new user" do
  
  scenario "Sign-up increases user count by one" do
    expect { sign_up }.to change(User, :count).by(1)
  end
  
  scenario 'I can sign up as a new user' do
    sign_up
    expect(page).to have_content('Welcome, test')
    expect(User.first.email).to eq('test@test.com')
  end

  scenario 'Requires a matching confirmation password' do
    expect { sign_up(password_confirmation: 'wrong') }.not_to change(User, :count)
    # expect(current_path).to eq('/users')
    # expect(page).to have_content('Password and confirmation password do not match')
  end

  scenario 'User cannot sign up without an email address' do
    expect { sign_up(email: nil) }.not_to change(User, :count)
  end
  
  scenario "User can't sign up with the same email address" do
    sign_up
    expect { sign_up(username: 'test02') }.not_to change(User, :count)
  end
  
  scenario "User can't sign up with the same user name" do
    sign_up
    expect { sign_up(email: 'test2@test.com') }.not_to change(User, :count)
  end
end
