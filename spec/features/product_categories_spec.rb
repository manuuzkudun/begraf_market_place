require "rails_helper"

RSpec.feature "Product categories section", :type => :feature do
  let!(:product_categories) { create_list(:product_category, 3) }

  before :each do
    visit "/product_categories"
  end

  it "Loads all product categories" do
    expect(page).to have_css(".product-category", count: product_categories.count)
  end
  it "Doesn´t show the product properties form" do
    section = find(:css, "section#properties-form")
    expect(section.text).to eq("")
  end
  it "Doesn´t show product offers form" do
    section = find(:css, "section#product-offers")
    expect(section.text).to eq("")
  end
  it "Doesn´t show image upload form" do
    section = find(:css, "section#image-upload-form")
    expect(section.text).to eq("")
  end

  context "A product is selected" do


  end

  context "No product is selected" do

  end

end
