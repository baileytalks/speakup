require_relative 'web_helpers'

feature 'Creating a speaker profile' do
  scenario 'Profile page contains a name field' do
    signup
    expect(page).to have_css('form')
  end

  scenario 'Adding a name and clicking publish adds a name to speaker' do
    signup
    add_name
    expect(page).to have_content('testname')
  end
end
