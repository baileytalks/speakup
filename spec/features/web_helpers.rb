def signup
  visit '/signup'
  expect(page.status_code).to eq(200)
  fill_in('email', with: 'bailey@gmail.com')
  fill_in('password', with: 'password1')
  click_button('Signup')
end

def non_email_signup
  visit '/signup'
  expect(page.status_code).to eq(200)
  fill_in('email', with: 'test')
  fill_in('password', with: 'password1')
  click_button('Signup')
end
