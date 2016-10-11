require 'spec_helper'

  feature "Enter names" do
      scenario "Entering 2 player names" do
      visit("/")

      fill_in :player1, with: 'George'
      fill_in :player2, with: 'Zippy'
      click_button "Battle commence!"
      expect(page).to have_content('George vs. Zippy')
      end
    end

    feature "Hit points" do
        scenario "Player 1 viewing Player 2's hits points" do
        visit("/")

        fill_in :player1, with: 'George'
        fill_in :player2, with: 'Zippy'
        click_button "Battle commence!"
        expect(page).to have_content('Zippy: 100 Hit Points')
        end
      end
