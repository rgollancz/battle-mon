def sign_in_and_play
  visit("/")
  fill_in :player1, with: 'George'
  fill_in :player2, with: 'Zippy'
  click_button "Confirm players"
end
