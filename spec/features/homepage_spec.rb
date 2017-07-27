feature 'Viewing profiles' do
  scenario 'Homepage loads successfully' do
    visit '/'
    expect(page.status_code).to eq 200
  end

  scenario 'Homepage has the placeholder text Hello World, index' do
    visit '/'
    expect(page).to have_content('Hello World, index')
  end
end
