require 'rails_helper'

describe "As a user, when I visit '/'" do
  describe "And I fill in 'Emily' in the textfield and click on 'Get Poems'" do
    it "should show a list of the first 10 poems and its data" do
      visit '/'

      fill_in :author, with: "Emily"

      click_on "Get Poems"

      expect(current_path).to eq(search_path)

      expect(page).to have_css('.poems', count: 10)

      within(first('.poems')) do
        expect(page).to have_css('.title')
        expect(page).to have_css('.author')
        expect(page).to have_css('.poem')
        expect(page).to have_css('.tone')
      end
    end
  end
end
