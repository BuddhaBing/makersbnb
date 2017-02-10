def sign_in(email: 'test@test.com',
            password: '12345678')
  visit '/sessions/new'
  fill_in :email,   with: email
  fill_in :password, with: password
  click_button 'Sign in'
end

def sign_out
  click_on 'Sign out'
end
