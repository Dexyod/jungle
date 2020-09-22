require 'rails_helper'
require 'support/database_cleaner'

RSpec.feature "Visitor navigates to product page", type: :feature, js: true do

  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "when clicking on a product header" do
    visit root_path
    save_screenshot('main_page_before_single_product.png')
    find(:css, '.product:first-child header a').click
    expect(page).to have_css('.product-detail')
    save_screenshot('single_product.png')
  end

end
