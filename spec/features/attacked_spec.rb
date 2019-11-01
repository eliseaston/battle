feature 'attack' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_link "Attack!"
    expect(page).to have_content "Faduma attacked Ellie"
  end

  scenario 'Player 2 loses 10 HP points' do
    sign_in_and_play
    click_link "Attack!"
    expect(page).not_to have_content "Ellie: 60 HP"
    expect(page).to have_content "Ellie 50 HP"
  end

end
