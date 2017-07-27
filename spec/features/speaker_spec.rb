require_relative 'web_helpers'

feature 'Creating speaker profiles' do
  scenario 'Speaker can be created with just email and password' do
    expect { signup }.to change { Speaker.count }.by(1)
  end

  scenario 'Speaker cannot be created without email in email field' do
    expect { non_email_signup }.to change { Speaker.count }.by(0)
  end
end
