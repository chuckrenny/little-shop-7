require "rails_helper"

RSpec.describe "Merchant Dashboard show page", type: :feature do
  before :each do
    load_test_data
  end

  # User Story 1
  it "displays the name of the merchant" do
    visit "/merchants/#{@merchant_1.id}/dashboard"

    expect(page).to have_content(@merchant_1.name)
  end

  # User Story 2
  it "displays a link to merchant items index" do
    visit "/merchants/#{@merchant_1.id}/dashboard"

    expect(page).to have_link("#{@merchant_1.name} Items")
    click_link ("#{@merchant_1.name} Items")
    expect(current_path).to eq("/merchants/#{@merchant_1.id}/items")
  end

  it "displays a link to merchant invoices index" do
    visit "/merchants/#{@merchant_1.id}/dashboard"

    expect(page).to have_link("#{@merchant_1.name} Invoices")
    click_link ("#{@merchant_1.name} Invoices")
    expect(current_path).to eq("/merchants/#{@merchant_1.id}/invoices")
  end

  # User Story 3
  it "shows top 5 customers with successful transactions" do
    visit "/merchants/#{@merchant_5.id}/dashboard"

    within "#top_five_customers" do 
      expect(page).to have_content(@customer_3.first_name)
      expect(page).to have_content(@customer_2.first_name)
      expect(page).to have_content(@customer_5.first_name)
      expect(page).to have_content(@customer_6.first_name)
      expect(page).to have_content(@customer_1.first_name)
    end
  end

  # User Story 3
  it "displays the customer name with the number of successful transactions" do
    visit "/merchants/#{@merchant_5.id}/dashboard"

    @merchant_5.top_five_customers.each do |customer|
      expect(page).to have_content("#{customer.customer_name} (#{customer.transaction_count} Transactions)")
    end
  end

  # And next to each Item I see the id of the invoice that ordered my item
  # And each invoice id is a link to my merchant's invoice show page
  # User Story 4
  xit "displays a section called 'Items Ready to Ship and a list of all item names - ordered but not yet shipped" do
    visit "/merchants/#{@merchant_5.id}/dashboard"

    within "#items_ready_to_ship" do
      expect(page).to have_content("Items Ready to Ship")
      expect(page).to have_content("#{@item_1_m5.name} - Invoice ID: #{@item_1_m5.invoice_id}")
    end
    

    # @merchant_5.items_ready_to_ship.each do |item|
    #   expect(page).to have_content("#{item.name} Invoice:")
    # end
  end

  # And next to each Item I see the id of the invoice that ordered my item
  # And each invoice id is a link to my merchant's invoice show page
   # User Story 4
   it "displays invoice id of the item" do
    visit "/merchants/#{@merchant_5.id}/dashboard"

    within "#items_ready_to_ship" do
    save_and_open_page
      expect(page).to have_content("#{@item_1_m5.name} - Invoice ID: #{@item_1_m5.invoice_items.invoice_id}")
    end
  end 

  # it "shows each "

    # within "#items_ready_to_ship" do
    #   expect(page).to have_link(invoice.id, href: merchant_invoice_path(merchant, invoice))
    # end

    # Invoice: <%= link_to item.invoice_id, merchant_invoice_path(@merchant, item.invoice_id) %>
end