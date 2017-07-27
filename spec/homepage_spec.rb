feature 'Viewing profiles' do
  scenario 'Users can see profiles on the homepage' do
    visit '/'
    expect(page.status_code).to eq 200
  end
end
