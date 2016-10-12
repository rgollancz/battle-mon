def sign_in_and_play
  visit("/")
  fill_in :player1_name, with: 'George'
  fill_in :player2_name, with: 'Zippy'
  click_button "Confirm players"
end
