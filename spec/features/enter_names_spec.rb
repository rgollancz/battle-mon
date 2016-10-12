require 'spec_helper'

feature "Enter names" do
  scenario "Entering 2 player names" do
    sign_in_and_play
    expect(page).to have_content('George vs. Zippy')
  end
end

feature "Hit points" do
  scenario "Player 1 viewing Player 2's hits points" do
    sign_in_and_play
    expect(page).to have_content('Zippy: 100 Hit Points')
  end
end

feature "Attack" do
  scenario "Player 1 attacks Player 2 and reduces P2's HPs by 10" do
    sign_in_and_play
    click_button "Battle commence!"
    expect(page).to have_content("Zippy: 90 HP")
  end
end

feature "Attack confirmation" do
  scenario "Player 1 attacks Player 2" do
    sign_in_and_play
    click_button "Battle commence!"
    expect(page).to have_content("George dropkicked Zippy!")
  end
end
