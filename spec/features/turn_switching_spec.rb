feature 'switch turns' do

  context 'see current turn' do

    scenario 'at start of game' do
      sign_in_and_play
      expect(page).to have_content "It is Faduma's turn."
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      click_link 'Attack!'
      expect(page).not_to have_content "It is Faduma's turn."
      expect(page).to have_content "It is Ellie's turn."
    end

  end

end
