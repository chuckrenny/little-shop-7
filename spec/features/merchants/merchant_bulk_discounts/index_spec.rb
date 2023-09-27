require "rails_helper"

RSpec.describe "Merchant Bulk Discounts Index Page", type: :feature do
  before :each do
    load_test_data

    @discount1 = BulkDiscount.create!(merchant_id: @merchant_5.id, discount: 10, quantity: 2)
    @discount2 = BulkDiscount.create!(merchant_id: @merchant_5.id, discount: 15, quantity: 4)
    @discount3 = BulkDiscount.create!(merchant_id: @merchant_6.id, discount: 33, quantity: 6)
    @discount4 = BulkDiscount.create!(merchant_id: @merchant_6.id, discount: 50, quantity: 10)
  end

  # Final US 1
  it "displays all bulk discounts, attributes, and corresponding show page link" do
    visit merchant_bulk_discounts_path(@merchant_5)

    expect(page).to have_content("10 % off for more than 2 items")
    expect(page).to have_content("15 % off for more than 4 items")
    expect(page).to have_link("10 Percent Page", href: merchant_bulk_discount_path(@merchant_5, @discount1))
    expect(page).to have_link("15 Percent Page", href: merchant_bulk_discount_path(@merchant_5, @discount2))
    expect(page).to_not have_content("33 % off for more than 6 items")
  end

  # Final US 2
  it "displays a link to create a new discount and redirects to a new page with form" do
    visit merchant_bulk_discounts_path(@merchant_5)

    expect(page).to have_link("Create New Discount", href: new_merchant_bulk_discount_path(@merchant_5))
  
    click_on "Create New Discount"

    expect(current_path).to eq(new_merchant_bulk_discount_path(@merchant_5))
  end
end