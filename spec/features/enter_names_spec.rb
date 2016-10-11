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
