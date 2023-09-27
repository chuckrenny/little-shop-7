require "rails_helper"

RSpec.describe Merchant, type: :model do
  before :each do
    load_test_data
    @invoice_1_c10 = @customer_10.invoices.create!(status: 1)
        @transaction_1_i1_c10 = @invoice_1_c10.transactions.create!(credit_card_number: "89123894701", result: 1, credit_card_expiration_date: "08/28")
        @invoice_item_1_i1_c10 = @invoice_1_c10.invoice_items.create!(invoice_id: @invoice_1_c10.id, item_id: @item_2_m1.id, quantity: 1, unit_price: @item_2_m1.unit_price, status: 0)
        @invoice_item_1_i1_c10 = @invoice_1_c10.invoice_items.create!(invoice_id: @invoice_1_c10.id, item_id: @item_3_m1.id, quantity: 1, unit_price: @item_3_m1.unit_price, status: 0)
        @invoice_item_1_i1_c10 = @invoice_1_c10.invoice_items.create!(invoice_id: @invoice_1_c10.id, item_id: @item_4_m1.id, quantity: 1, unit_price: @item_4_m1.unit_price, status: 0)
        @invoice_item_1_i1_c10 = @invoice_1_c10.invoice_items.create!(invoice_id: @invoice_1_c10.id, item_id: @item_5_m1.id, quantity: 1, unit_price: @item_5_m1.unit_price, status: 0)
        @invoice_item_1_i1_c10 = @invoice_1_c10.invoice_items.create!(invoice_id: @invoice_1_c10.id, item_id: @item_6_m1.id, quantity: 1, unit_price: @item_6_m1.unit_price, status: 0)
        @invoice_item_1_i1_c10 = @invoice_1_c10.invoice_items.create!(invoice_id: @invoice_1_c10.id, item_id: @item_7_m1.id, quantity: 1, unit_price: @item_7_m1.unit_price, status: 0)
  end
  describe "relationships" do
    it { should have_many(:items) }
    it { should have_many(:bulk_discounts) }
    it { should have_many(:invoice_items).through(:items) }
    it { should have_many(:invoices).through(:invoice_items) }
    it { should have_many(:transactions).through(:invoices) }
    it { should have_many(:customers).through(:invoices) }
  end

  describe "validations" do
    it {should validate_presence_of(:name)}
  end

  describe "class methods" do
    describe ".enabled_merchants" do
      it "can return an alphabetized list of enabled merchants" do
        @merchant_1.update(enabled: true)
        @merchant_2.update(enabled: true)
        @merchant_3.update(enabled: true)
        @merchant_4.update(enabled: true)

        expect(Merchant.enabled_merchants).to eq([@merchant_3, @merchant_2, @merchant_1, @merchant_4])
      end
    end

    describe ".disabled_merchants" do
      it "can return an alphabetized list of disabled merchants" do
        expect(Merchant.disabled_merchants).to eq([@merchant_3, @merchant_2, @merchant_6, @merchant_1, @merchant_5, @merchant_4])
      end
    end

    describe ".top_5_by_revenue" do
      it "can return the top 5 merchants by total revenue" do
        expect(Merchant.top_5_by_revenue).to eq([@merchant_1, @merchant_2, @merchant_5, @merchant_4, @merchant_6])
      end
    end

    it "enabled_items" do
      items = @merchant_1.enabled_items

      expect(items.length).to eq(6)

      expect(items[0]).to eq(@item_1_m1)
      expect(items[1]).to eq(@item_2_m1)
      expect(items[2]).to eq(@item_3_m1)
      expect(items[3]).to eq(@item_4_m1)
      expect(items[4]).to eq(@item_5_m1)
      expect(items[5]).to eq(@item_6_m1)   
    end
    it ".disabled_items" do
      items = @merchant_1.disabled_items

      expect(items.length).to eq(4)

      expect(items[0]).to eq(@item_7_m1)
      expect(items[1]).to eq(@item_8_m1)
      expect(items[2]).to eq(@item_9_m1)
      expect(items[3]).to eq(@item_10_m1)
    end
  end

  describe "instance methods" do
    describe "#enabled_or_disabled" do
      it "can return 'Enabled' or 'Disabled'" do
        expect(@merchant_1.enabled).to be false
        expect(@merchant_1.enabled_or_disabled).to eq("Disabled")

        @merchant_1.update(enabled: true)

        expect(@merchant_1.enabled).to be true
        expect(@merchant_1.enabled_or_disabled).to eq("Enabled")
      end
    end

    describe "#button_text" do
      it "can return the correct button text" do
        expect(@merchant_1.enabled).to be false
        expect(@merchant_1.button_text).to eq("Enable")

        @merchant_1.update(enabled: true)

        expect(@merchant_1.enabled).to be true
        expect(@merchant_1.button_text).to eq("Disable")
      end
    end

    describe "#top_five_customers" do
      it "can shows top 5 customers and transaction count" do
        top_customers = @merchant_5.top_five_customers

        expect(top_customers.length).to eq(5)

        expect(top_customers[0]).to eq(@customer_2)
        expect(top_customers[1]).to eq(@customer_6)
        expect(top_customers[2]).to eq(@customer_1)
        expect(top_customers[3]).to eq(@customer_7)
        expect(top_customers[4]).to eq(@customer_8)
      end
    end

  describe "#items_ready_to_ship"
    it "can return an array of items ready to ship" do
      expect(@merchant_5.items_ready_to_ship).to match_array([@item_1_m5, @item_4_m5, @item_4_m5, @item_6_m5, @item_8_m5, @item_4_m5, @item_4_m5, @item_4_m5])
    end
  end

  describe "top_5_popular_items" do
    
      it "can list the top 5 items by revenue" do
        arr = @merchant_1.top_5_popular_items
        expect(@merchant_1.top_5_popular_items.length).to eq(5)
        expect(arr[0]).to eq(@item_6_m1)
        expect(arr[1]).to eq(@item_1_m1)
        expect(arr[2]).to eq(@item_2_m1)
        expect(arr[3]).to eq(@item_3_m1)
        expect(arr[4]).to eq(@item_7_m1)
      end
    end
end