require "rails_helper"

RSpec.describe "Merchant Dashboard show page", type: :feature do
  before :each do
    load_test_data
  end

  # User Story 1
  it "displays the name of the merchant" do
    # visit "/merchants/#{@merchant_1.id}/dashboard"
    visit merchant_dashboard_path(@merchant_1)

    expect(page).to have_content(@merchant_1.name)
  end

  # User Story 2
  it "displays a link to merchant items index" do
    # visit "/merchants/#{@merchant_1.id}/dashboard"
    visit merchant_dashboard_path(@merchant_1)

    expect(page).to have_link("#{@merchant_1.name} Items")
    click_link ("#{@merchant_1.name} Items")
    # expect(current_path).to eq("/merchants/#{@merchant_1.id}/items")
    expect(current_path).to eq(merchant_items_path(@merchant_1))
  end

  it "displays a link to merchant invoices index" do
    # visit "/merchants/#{@merchant_1.id}/dashboard"
    visit merchant_dashboard_path(@merchant_1)

    expect(page).to have_link("#{@merchant_1.name} Invoices")
    click_link ("#{@merchant_1.name} Invoices")
    # expect(current_path).to eq("/merchants/#{@merchant_1.id}/invoices")
    expect(current_path).to eq(merchant_invoices_path(@merchant_1))
  end

  # User Story 3
  it "shows top 5 customers with successful transactions" do
    # visit "/merchants/#{@merchant_5.id}/dashboard"
    visit merchant_dashboard_path(@merchant_5)

    within "#top_five_customers" do 
      expect(page).to have_content(@customer_2.first_name)
      expect(page).to have_content(@customer_6.first_name)
      expect(page).to have_content(@customer_1.first_name)
      expect(page).to have_content(@customer_7.first_name)
      expect(page).to have_content(@customer_8.first_name)
    end
  end

  # User Story 3
  it "displays the customer name with the number of successful transactions" do
    # visit "/merchants/#{@merchant_5.id}/dashboard"
    visit merchant_dashboard_path(@merchant_5)

    @merchant_5.top_five_customers.each do |customer|
      expect(page).to have_content("#{customer.customer_name} (#{customer.transaction_count} Transactions)")
    end
  end

  # User Story 4
  it "displays a section called 'Items Ready to Ship and a list of all item names - ordered but not yet shipped" do
    # visit "/merchants/#{@merchant_5.id}/dashboard"
    visit merchant_dashboard_path(@merchant_5)

    within "#items_ready_to_ship" do
      expect(page).to have_content("Items Ready to Ship")
      expect(page).to have_content("#{@item_1_m5.name} - Invoice ID: #{@invoice_item_1_i3_c1.invoice_id}")
    end
  end

   # User Story 4
   it "displays link of item invoice id to merchant invoice show page" do
    # visit "/merchants/#{@merchant_5.id}/dashboard"
    visit merchant_dashboard_path(@merchant_5)

    within "#items_ready_to_ship" do
      click_link("#{@invoice_item_1_i3_c1.invoice_id}")
      # expect(current_path).to eq("/merchants/#{@merchant_5.id}/invoices/#{@invoice_item_1_i3_c1.invoice_id}")
      expect(current_path).to eq(merchant_invoice_path(@merchant_5, @invoice_item_1_i3_c1.invoice_id))
    end
  end

  # User Story 5
  it "displays the date of the invoice creation" do
    # visit "/merchants/#{@merchant_5.id}/dashboard"
    visit merchant_dashboard_path(@merchant_5)

    within "#items_ready_to_ship" do
      expect(page).to have_content("Items Ready to Ship")
      expect(page).to have_content("[#{@item_1_m5.format_created_at}] #{@item_1_m5.name} - Invoice ID: #{@invoice_item_1_i3_c1.invoice_id}")
    end
  end

  # User Story 5
  it "displays the list is ordered from oldest to newest" do
    # visit "/merchants/#{@merchant_5.id}/dashboard"
    visit merchant_dashboard_path(@merchant_5)

    within "#items_ready_to_ship" do
      expect(@item_1_m5.name).to appear_before(@item_4_m5.name)
      expect(@item_4_m5.name).to appear_before(@item_8_m5.name)
    end
  end

  # Final US 1
  it "displays a link to view all discounts" do
    visit merchant_dashboard_path(@merchant_5)

    click_on("View Bulk Discounts")
    # expect(page).to have_current_path("/merchants/#{@merchant_5.id}/discounts")
    expect(current_path).to eq(merchant_bulk_discounts_path(@merchant_5))
  end
end