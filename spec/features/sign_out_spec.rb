feature 'Sign out' do
  scenario 'I can sign out once I have signed up' do
    visit '/'
    sign_up
    sign_out
    expect(page).to have_content('Goodbye!')
  end
end
