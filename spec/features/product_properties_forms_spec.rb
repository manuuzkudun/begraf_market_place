require "rails_helper"

RSpec.feature "Product categories section", :type => :feature do
  let!(:product_categories) { create_list(:product_category, 3) }

  let!(:category) { product_categories.first }
  let! (:category_properties) { category.product_properties }

  before :each do
    visit "/"
    click_link("#{category.name}")
  end

  it "Loads all product categories" do
    # expect(page).to have_css(".product-category", count: product_categories.count)
  end

end
