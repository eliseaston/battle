feature 'Entering names' do
  scenario 'Players can enter names' do
    sign_in_and_play
    expect(page).to have_content 'Faduma vs Ellie'
  end
end
