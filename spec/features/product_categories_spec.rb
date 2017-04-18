require 'rails_helper'

RSpec.feature 'Select a product category' do
  scenario 'A user selects a product category' do
    visit product_categories_path
    # click_link
    page.has_content?('Panfjletos')
    # fill_in "Title", with: "Creating a blog"
    # fill_in "Body", with: "Lorem Ipsum"
    # click_button "Create Article"
    # expect(page).to have_content("Article has been created")
    # expect(page.current_path).to eq(articles_path)
  end
end
