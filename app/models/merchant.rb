class Merchant < ApplicationRecord
  has_many :items
  has_many :bulk_discounts
  has_many :invoice_items, through: :items
  has_many :invoices, through: :invoice_items
  has_many :transactions, through: :invoices
  has_many :customers, through: :invoices
  
  validates_presence_of :name

  # User Story 3
  def top_five_customers
    customers.joins(:transactions)
            .where("transactions.result = '1'") 
            .group('customers.id')
            .select("CONCAT(customers.first_name, ' ', customers.last_name) AS customer_name, customers.*, COUNT(DISTINCT transactions.id) AS transaction_count")
            .order('transaction_count DESC')
            .limit(5)
  end

  def enabled_or_disabled
    if enabled == true
      "Enabled"
    elsif enabled == false
      "Disabled"
    end
  end

  def button_text
    if enabled == true
      "Disable"
    elsif enabled == false
      "Enable"
    end
  end

  def self.enabled_merchants
    where(enabled: true).order(:name)
  end

  def self.disabled_merchants
    where(enabled: false).order(:name)
  end

  # User Story 4 & 5
  def items_ready_to_ship
    self.items.joins(invoice_items: :invoice)
        .where("invoice_items.status = '1'") 
        .select("items.*, invoice_items.invoice_id")
        .order('invoices.created_at ASC')
  end

  #US 30 - top 5 merchants by revenue
  def self.top_5_by_revenue
    select("merchants.*, sum(invoice_items.quantity * invoice_items.unit_price) AS revenue").joins(:transactions).where("transactions.result = '1'").group(:id).order("revenue desc").limit(5)
  end

  #US31 - best sales day
  # def best_day
  #   best_day = invoices.joins(:invoice_items).select("invoices.created_at::date AS created_date, sum(invoice_items.quantity * invoice_items.unit_price) AS total_revenue").group(:created_date).order("total_revenue desc")[0]

  #   best_day.created_date.strftime("%A, %B %e, %Y")
  # end

  #story 10
  def enabled_items
    items.where(status: true)
  end

  def disabled_items
    items.where(status: false)
  end

# User Story 12
  def top_5_popular_items
    items.joins(:invoice_items)
    .where("invoice_items.status = 0")
    .group(:id)
    .select("items.*, SUM(invoice_items.quantity * invoice_items.unit_price) AS revenue")
    .order("revenue DESC")
    .limit(5)
  end
end