require 'rails_helper'

describe "user can visit the welcome page" do
  scenario "and see a dropdown menu" do
    visit '/'
    expect(page).to have_content("Nearest Fuel Station")
    expect(page).to have_content("Search For The Nearest Electric Charging Station")
    expect(page).to have_button("Find Nearest Station")
  end

  describe 'when I visit the welcome page' do
    before { visit '/' }

    describe 'when I select Turing as a start location' do
      it 'takes me to /search' do
        select "Turing", from: :location
        click_on "Find Nearest Station"

        expect(current_path).to eq('/search')
      end
    end
  end
end
