feature 'Entering names' do
  scenario 'Players can enter names' do
    visit ('/')
    expect(page).to have_content 'Enter names:'
  end
end
