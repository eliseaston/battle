feature "hit points" do
  scenario "see player 2 hit points" do
    visit('/')
    fill_in :player1, with: "Faduma"
    fill_in :player2, with: "Ellie"
    click_button("Submit")
    expect(page).to have_content "Ellie: 60 HP"
  end
end
