require "rails_helper"

RSpec.describe "Merchant Invoice Show Page", type: :feature do
  before :each do
    load_test_data

    @discount1 = BulkDiscount.create!(merchant_id: @merchant_5.id, discount: 10, quantity: 2)
    @discount2 = BulkDiscount.create!(merchant_id: @merchant_5.id, discount: 15, quantity: 4)
    @discount3 = BulkDiscount.create!(merchant_id: @merchant_6.id, discount: 33, quantity: 6)
    @discount4 = BulkDiscount.create!(merchant_id: @merchant_6.id, discount: 50, quantity: 10)
  end

  # User Story 16
  it "displays all items and their attributes(name, quantity, price, invoice item status) for that invoice" do
    # visit "/merchants/#{@merchant_5.id}/invoices/#{@invoice_3_c6.id}"
    visit merchant_invoice_path(@merchant_5, @invoice_3_c6)

    expect(page).to_not have_content(@item_1_m3.name)
    expect(page).to have_content(@item_6_m5.name)
    expect(page).to have_content( @invoice_item_1_i3_c6.quantity)
    expect(page).to have_content(@item_6_m5.unit_price)
    expect(page).to have_content(@invoice_item_1_i3_c6.status)
    
  end 

  # User Story 17
  it "displays total revenue generated from all items on the invoice" do
    # visit "/merchants/#{@merchant_5.id}/invoices/#{@invoice_3_c6.id}"
    visit merchant_invoice_path(@merchant_5, @invoice_3_c6)

    expect(page).to have_content("Total Revenue for Invoice: #{@invoice_3_c6.total_revenue}")
  end

  # User Story 18
  it "displays invoice status in a select field that allows users to update the status" do
    # visit "/merchants/#{@merchant_5.id}/invoices/#{@invoice_2_c6.id}"
    visit merchant_invoice_path(@merchant_5, @invoice_2_c6)

    expect(@invoice_item_1_i2_c6.status).to eq("pending")

    select "shipped", from: "status"
    click_button "Update Item Status"

    @invoice_item_1_i2_c6.reload

    expect(@invoice_item_1_i2_c6.status).to eq("shipped")
  end

  # Final US 6
  it "displays the total discounted revenue for the invoice including bulk discounts" do
    visit merchant_invoice_path(@merchant_5, @invoice_4_c6)

    # @item_8_m5 unit price 30
    # 20 units sold: 50% off > 10 units sold
    expect(page).to have_content("Total Revenue after Discounts for Invoice: $300")
  end
end