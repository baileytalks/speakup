def signup
  visit '/signup'
  expect(page.status_code).to eq(200)
  fill_in('email', with: 'test@gmail.com')
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

def add_name
  visit '/profile'
  fill_in('name', with: 'testname')
  click_button('Publish')
end
