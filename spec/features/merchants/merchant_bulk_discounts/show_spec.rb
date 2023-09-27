require "rails_helper"

RSpec.describe "Merchant Bulk Discounts Show Page", type: :feature do
  before :each do
    load_test_data

    @discount1 = BulkDiscount.create!(merchant_id: @merchant_5.id, discount: 10, quantity: 2)
    @discount2 = BulkDiscount.create!(merchant_id: @merchant_5.id, discount: 15, quantity: 4)
    @discount3 = BulkDiscount.create!(merchant_id: @merchant_6.id, discount: 33, quantity: 6)
    @discount4 = BulkDiscount.create!(merchant_id: @merchant_6.id, discount: 50, quantity: 10)
  end

  # Final US 4
  it "displays the discount's quantity threshold and percentage discount" do
    visit merchant_bulk_discount_path(@merchant_5, @discount2)

    expect(page).to have_content("#{@discount2.discount}% off for more than #{@discount2.quantity} items")
  end

  # Final US 5
  it "displays the link to edit" do
    visit merchant_bulk_discount_path(@merchant_5, @discount2)

    expect(page).to have_link("Edit Discount", href: edit_merchant_bulk_discount_path(@merchant_5, @discount2))

    click_link("Edit Discount")

    expect(current_path).to be()
  end
end