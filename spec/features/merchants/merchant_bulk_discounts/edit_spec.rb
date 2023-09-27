require "rails_helper"

RSpec.describe "Merchant Bulk Discounts Show Page", type: :feature do
  before :each do
    load_test_data

    @discount1 = BulkDiscount.create!(merchant_id: @merchant_5.id, discount: 10, quantity: 2)
    @discount2 = BulkDiscount.create!(merchant_id: @merchant_5.id, discount: 15, quantity: 4)
    @discount3 = BulkDiscount.create!(merchant_id: @merchant_6.id, discount: 33, quantity: 6)
    @discount4 = BulkDiscount.create!(merchant_id: @merchant_6.id, discount: 50, quantity: 10)
  end

  # Final US 5
  it "redirects to a form to edit a discount with pre-poluated data and after updating the discount it redirects to the bulk discount's show page and displays updated attributes" do
    visit edit_merchant_bulk_discount_path(@merchant_5, @discount2)

    expect(page).to have_field("Discount", with: "#{@discount2.discount}")
    expect(page).to have_field("Quantity", with: "#{@discount2.quantity}")

    fill_in "Discount", with: "30"
    fill_in "Quantity", with: "5"

    click_button "Update Discount"

    expect(current_path).to eq(merchant_bulk_discount_path(@merchant_5, @discount2))
    expect(page).to_not have_content("15% off for more than 4 items")
    expect(page).to have_content("30% off for more than 5 items")
  end
end