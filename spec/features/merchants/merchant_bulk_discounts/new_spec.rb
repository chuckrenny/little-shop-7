require "rails_helper"

RSpec.describe "Merchant Bulk Discounts Index Page", type: :feature do
  before :each do
    load_test_data

    @discount1 = BulkDiscount.create!(merchant_id: @merchant_5.id, discount: 10, quantity: 2)
    @discount2 = BulkDiscount.create!(merchant_id: @merchant_5.id, discount: 15, quantity: 4)
    @discount3 = BulkDiscount.create!(merchant_id: @merchant_6.id, discount: 33, quantity: 6)
    @discount4 = BulkDiscount.create!(merchant_id: @merchant_6.id, discount: 50, quantity: 10)
  end

  # Final US 2
  it "visits the new discount form and after completing it with valid data the submit will redirect back to the bulk discount index page and display the new discount" do
    visit new_merchant_bulk_discount_path(@merchant_5)

    fill_in "Discount", with: "25"
    fill_in "Quantity", with: "5"

    click_button "Create Discount"

    expect(current_path).to eq(merchant_bulk_discounts_path(@merchant_5))
    expect(page).to have_content("25 % off for more than 5 items")
  end
end