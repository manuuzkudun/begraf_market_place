require "rails_helper"

RSpec.feature "Product categories section", :type => :feature do
  let!(:product_categories) { create_list(:product_category, 3) }

  before :each do
    visit "/"
  end

  it "Loads all product categories" do
    expect(page).to have_css(".product-category", count: product_categories.count)
  end
  it "Doesn´t show the product properties form" do
    properties_section = find(:css, "section#properties-form")
    expect(properties_section.text).to eq("")
  end
  it "Doesn´t show product offers form" do
    offers_section = find(:css, "section#product-offers")
    expect(offers_section.text).to eq("")
  end
  it "Doesn´t show image upload form" do
    image_upload_section = find(:css, "section#image-upload-form")
    expect(image_upload_section.text).to eq("")
  end
end
