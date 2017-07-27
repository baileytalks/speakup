require_relative 'web_helpers'

feature 'Creating speaker profiles' do
  scenario 'Speaker login can be created with just email and password' do
    expect { signup }.to change { Speaker.count }.by(1)
  end

  scenario 'Speaker login cannot be created without email in email field' do
    expect { non_email_signup }.to change { Speaker.count }.by(0)
  end

  scenario 'After creating a speaker login forwards to that speaker profile' do
    signup
    expect(page).to have_content('Create profile')
  end
end
