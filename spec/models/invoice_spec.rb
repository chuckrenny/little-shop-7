require "rails_helper"

RSpec.describe Invoice, type: :model do
  before :each do
    load_test_data
  end

  describe "relationships" do
    it { should belong_to :customer }
    it { should have_many :transactions}
    it { should have_many(:invoice_items)}
    it { should have_many(:items).through(:invoice_items)}
    it { should have_many(:merchants).through(:items)}
  end

  describe "validations" do
    it {should validate_presence_of(:status)}
  end

  describe "isntance methods" do
    describe "#date_created" do
      it "can retrun the created_at date formatted as 'day_of_week, full_month padded_day, year'" do
        expect(@invoice_2_c1.date_created).to eq("Saturday, March 10, 2012")
      end
    end

    describe "#customer_name" do
      it "can return the full name of teh customer" do
        expect(@invoice_2_c1.customer_name).to eq("Bob Dugles")
      end
    end

    describe "#total_revenue" do
      it "can return the total revenue of the invoice" do
        expect(@invoice_2_c1.total_revenue).to eq(74141)
      end
    end
  end
end