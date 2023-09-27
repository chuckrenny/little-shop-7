def load_test_data
  #Merchants and items
    @merchant_1 = Merchant.create!(name: "Ray's Handmade Jewelry")
      #merchant_1 items
      @item_1_m1 = @merchant_1.items.create!(name: "Watch", description: "goes tic tic", unit_price: 600, status: true)
      @item_2_m1 = @merchant_1.items.create!(name: "Ring", description: "For wife", unit_price: 1990, status: true)
      @item_3_m1 = @merchant_1.items.create!(name: "Neckalce", description: "Goes on neck", unit_price: 836, status: true)
      @item_4_m1 = @merchant_1.items.create!(name: "Ear Rings", description: "Two Piece", unit_price: 50, status: true)
      @item_5_m1 = @merchant_1.items.create!(name: "Glasses", description: "Fancey", unit_price: 332, status: true)
      @item_6_m1 = @merchant_1.items.create!(name: "Crown", description: "a bit much", unit_price: 999999, status: true)
      @item_7_m1 = @merchant_1.items.create!(name: "Pocket Watch", description: "Cooler than an iphone", unit_price: 565, status: false)
      @item_8_m1 = @merchant_1.items.create!(name: "Bracelet", description: "For wrist", unit_price: 30, status: false)
      @item_9_m1 = @merchant_1.items.create!(name: "Another Ring", description: "is this the one", unit_price: 780, status: false)
      @item_10_m1 = @merchant_1.items.create!(name: "Another watch", description: "Just like the first but cheaper", unit_price: 599, status: false)

    @merchant_2 = Merchant.create!(name: "Carls Cars")
      #merchant_2 items
      @item_1_m2 = @merchant_2.items.create!(name: "Truck", description: "Mud Stuff", unit_price: 6000)
      @item_2_m2 = @merchant_2.items.create!(name: "Lambo", description: "Vroom", unit_price: 9999)
      @item_3_m2 = @merchant_2.items.create!(name: "Prius", description: "I Love Nature", unit_price: 8036)
      @item_4_m2 = @merchant_2.items.create!(name: "Beetle", description: "Reliable", unit_price: 5098)
      @item_5_m2 = @merchant_2.items.create!(name: "Just a car", description: "For the kids", unit_price: 7800)
      @item_6_m2 = @merchant_2.items.create!(name: "Tesla", description: "I love Elon", unit_price: 666)

    @merchant_3 = Merchant.create!(name: "Bobs Bakery")
      #merchant_3 items
      @item_1_m3 = @merchant_3.items.create!(name: "Sour Dough", description: "My favorite", unit_price: 6)
      @item_2_m3 = @merchant_3.items.create!(name: "White", description: "lame", unit_price: 9)
      @item_3_m3 = @merchant_3.items.create!(name: "Wheat", description: "Less lame", unit_price: 8)
      @item_4_m3 = @merchant_3.items.create!(name: "Sweet Bread", description: "Sugery", unit_price: 5)
      @item_5_m3 = @merchant_3.items.create!(name: "Rye", description: "Good for Sandwich", unit_price: 3)
      @item_6_m3 = @merchant_3.items.create!(name: "Loaf", description: "Lot of bread", unit_price: 11)

    @merchant_4 = Merchant.create!(name: "Tony's Tints")
      #merchant_4 items
      @item_1_m4 = @merchant_4.items.create!(name: "Light Tint", description: "Very legal", unit_price: 500)
      @item_2_m4 = @merchant_4.items.create!(name: "Medium Tint", description: "Somewhat legal", unit_price: 750)
      @item_3_m4 = @merchant_4.items.create!(name: "Dark Tint", description: "Not street legal", unit_price: 1000)
      @item_4_m4 = @merchant_4.items.create!(name: "Darkest Tint", description: "Literally can't see", unit_price: 1500)
      @item_5_m4 = @merchant_4.items.create!(name: "Mirror tint", description: "Why?", unit_price: 250)
      @item_6_m4 = @merchant_4.items.create!(name: "Dark license plate cover", description: "a bit much", unit_price: 100)
      @item_7_m4 = @merchant_4.items.create!(name: "Camo body wrap", description: "Cooler than an iphone", unit_price: 2000, created_at: "2012-03-08 00:54:09 UTC")
      @item_8_m4 = @merchant_4.items.create!(name: "Flame body wrap", description: "Fire", unit_price: 1800)
      @item_9_m4 = @merchant_4.items.create!(name: "Light bar", description: "Ironic, isn't it?", unit_price: 780)
      @item_10_m4 = @merchant_4.items.create!(name: "Fuzzy dice for mirror", description: "Just go for it", unit_price: 50)

    @merchant_5 = Merchant.create!(name: "Shelly Seashells")
      #merchant_5 items
      @item_1_m5 = @merchant_5.items.create!(name: "Mussell", description: "Iridescent", unit_price: 40)
      @item_2_m5 = @merchant_5.items.create!(name: "Cowry", description: "Shimmer", unit_price: 15)
      @item_3_m5 = @merchant_5.items.create!(name: "Nautilidae", description: "Ancient", unit_price: 82)
      @item_4_m5 = @merchant_5.items.create!(name: "Conch", description: "Pink", unit_price: 90)
      @item_5_m5 = @merchant_5.items.create!(name: "Tusk", description: "Elongated", unit_price: 20)
      @item_6_m5 = @merchant_5.items.create!(name: "Wentletrap", description: "Spiral White", unit_price: 99)
      @item_7_m5 = @merchant_5.items.create!(name: "Clam", description: "Freshwater", unit_price: 5)
      @item_8_m5 = @merchant_5.items.create!(name: "Scallop", description: "Iconic", unit_price: 30)

    @merchant_6 = Merchant.create!(name: "Dan's D&D Doohickies")
      #merchant_6 items
      @item_1_m6 = @merchant_6.items.create!(name: "Gemstone Dice Set", description: "Bloodstone", unit_price: 1234)
      @item_2_m6 = @merchant_6.items.create!(name: "Glass Dice Set", description: "Purple Glass", unit_price: 7232)
      @item_3_m6 = @merchant_6.items.create!(name: "Dice Tray", description: "Bolivian Rosewood", unit_price: 9886)
      @item_4_m6 = @merchant_6.items.create!(name: "Game Mat", description: "Dungeon Scene", unit_price: 2131)
      @item_5_m6 = @merchant_6.items.create!(name: "Mini-fig", description: "Beholder", unit_price: 666)
      @item_6_m6 = @merchant_6.items.create!(name: "GM Screen", description: "Tri-panel", unit_price: 3883)

  # customers and invoices
    @customer_1 = Customer.create!(first_name: "Bob", last_name: "Dugles")
      # @customer_1 invoices
      @invoice_1_c1 = @customer_1.invoices.create!(status: 0)
        @transaction_1_i1_c1 = @invoice_1_c1.transactions.create!(credit_card_number: "823456098", result: 0, credit_card_expiration_date: "11/23")
        @invoice_item_1_i1_c1 = @invoice_1_c1.invoice_items.create!(invoice_id: @invoice_1_c1.id, item_id: @item_1_m3.id, quantity: 2, unit_price: @item_1_m3.unit_price, status: 0)
        @invoice_item_2_i1_c1 = @invoice_1_c1.invoice_items.create!(invoice_id: @invoice_1_c1.id, item_id: @item_2_m3.id, quantity: 4, unit_price: @item_2_m3.unit_price, status: 1)
        @invoice_item_3_i1_c1 = @invoice_1_c1.invoice_items.create!(invoice_id: @invoice_1_c1.id, item_id: @item_3_m3.id, quantity: 1, unit_price: @item_3_m3.unit_price, status: 0)

      @invoice_2_c1 = @customer_1.invoices.create!(status: 0, created_at: "2012-03-10 00:54:09 UTC")
        @transaction_1_i2_c1 = @invoice_2_c1.transactions.create!(credit_card_number: "812364589", result: 1, credit_card_expiration_date: "04/24")
        @invoice_item_1_i2_c1 = @invoice_2_c1.invoice_items.create!(invoice_id: @invoice_2_c1.id, item_id: @item_1_m2.id, quantity: 2, unit_price: @item_1_m2.unit_price, status: 2)
        @invoice_item_2_i2_c1 = @invoice_2_c1.invoice_items.create!(invoice_id: @invoice_2_c1.id, item_id: @item_2_m2.id, quantity: 3, unit_price: @item_2_m2.unit_price, status: 2)
        @invoice_item_3_i2_c1 = @invoice_2_c1.invoice_items.create!(invoice_id: @invoice_2_c1.id, item_id: @item_3_m2.id, quantity: 4, unit_price: @item_3_m2.unit_price, status: 2)

      @invoice_3_c1 = @customer_1.invoices.create!(status: 1, created_at: "2012-03-10 00:54:09 UTC")
        @transaction_1_i3_c1 = @invoice_3_c1.transactions.create!(credit_card_number: "21345786", result: 1, credit_card_expiration_date: "04/24")
        @invoice_item_1_i3_c1 = @invoice_3_c1.invoice_items.create!(invoice_id: @invoice_3_c1.id, item_id: @item_1_m5.id, quantity: 200, unit_price: @item_1_m5.unit_price, status: 1)
        @invoice_item_2_i3_c1 = @invoice_3_c1.invoice_items.create!(invoice_id: @invoice_3_c1.id, item_id: @item_2_m2.id, quantity: 1, unit_price: @item_2_m2.unit_price, status: 2)

      @invoice_4_c1 = @customer_1.invoices.create!(status: 1)
        @transaction_1_i4_c1 = @invoice_4_c1.transactions.create!(credit_card_number: "67819235", result: 0, credit_card_expiration_date: "12/23")
        @invoice_item_1_i4_c1 = @invoice_4_c1.invoice_items.create!(invoice_id: @invoice_4_c1.id, item_id: @item_5_m6.id, quantity: 666, unit_price: @item_5_m6.unit_price, status: 2)

      @invoice_5_c1 = @customer_1.invoices.create!(status: 2)
        @transaction_1_i5_c1 = @invoice_5_c1.transactions.create!(credit_card_number: "16782345", result: 1, credit_card_expiration_date: "08/28")
        @invoice_item_1_i5_c1 = @invoice_5_c1.invoice_items.create!(invoice_id: @invoice_5_c1.id, item_id: @item_1_m5.id, quantity: 1, unit_price: @item_1_m5.unit_price, status: 0)

    @customer_2 = Customer.create!(first_name: "Dan", last_name: "Smith")
      # @customer_2 invoices
      @invoice_1_c2 = @customer_2.invoices.create!(status: 1)
        @transaction_1_i1_c2 = @invoice_1_c2.transactions.create!(credit_card_number: "612780364", result: 0, credit_card_expiration_date: "11/23")
        @invoice_item_1_i1_c2 = @invoice_1_c2.invoice_items.create!(invoice_id: @invoice_1_c2.id, item_id: @item_1_m1.id, quantity: 1, unit_price: @item_1_m1.unit_price, status: 0)

      @invoice_2_c2 = @customer_2.invoices.create!(status: 2)
        @transaction_1_i2_c2 = @invoice_2_c2.transactions.create!(credit_card_number: "612347806", result: 1, credit_card_expiration_date: "04/24")
        @invoice_item_1_i2_c2 = @invoice_2_c2.invoice_items.create!(invoice_id: @invoice_2_c2.id, item_id: @item_1_m2.id, quantity: 1, unit_price: @item_1_m2.unit_price, status: 0)

      @invoice_3_c2 = @customer_2.invoices.create!(status: 2)
        @transaction_1_i3_c2 = @invoice_3_c2.transactions.create!(credit_card_number: "089128394", result: 1, credit_card_expiration_date: "04/24")
        @invoice_item_1_i3_c2 = @invoice_3_c2.invoice_items.create!(invoice_id: @invoice_3_c2.id, item_id: @item_1_m3.id, quantity: 1, unit_price: @item_1_m3.unit_price, status: 0)

      @invoice_4_c2 = @customer_2.invoices.create!(status: 2)
        @transaction_1_i4_c2 = @invoice_4_c2.transactions.create!(credit_card_number: "80612378648", result: 0, credit_card_expiration_date: "12/23")
        @transaction_2_i4_c2 = @invoice_4_c2.transactions.create!(credit_card_number: "80612378648", result: 0, credit_card_expiration_date: "12/23")
        @transaction_3_i4_c2 = @invoice_4_c2.transactions.create!(credit_card_number: "80612378648", result: 1, credit_card_expiration_date: "12/24")
        @invoice_item_1_i4_c2 = @invoice_4_c2.invoice_items.create!(invoice_id: @invoice_4_c2.id, item_id: @item_1_m4.id, quantity: 1, unit_price: @item_1_m4.unit_price, status: 0)

      @invoice_5_c2 = @customer_2.invoices.create!(status: 1)
        @transaction_1_i5_c2 = @invoice_5_c2.transactions.create!(credit_card_number: "89123894701", result: 1, credit_card_expiration_date: "08/28")
        @invoice_item_1_i5_c2 = @invoice_5_c2.invoice_items.create!(invoice_id: @invoice_5_c2.id, item_id: @item_4_m5.id, quantity: 1, unit_price: @item_4_m5.unit_price, status: 1)

    @customer_3 = Customer.create!(first_name: "Pam", last_name: "Sanders")
      # @customer_3 invoices
      @invoice_1_c3 = @customer_3.invoices.create!(status: 1)
        @transaction_1_i1_c3 = @invoice_1_c3.transactions.create!(credit_card_number: "1", result: 0, credit_card_expiration_date: "11/23")
        @transaction_2_i1_c3 = @invoice_1_c3.transactions.create!(credit_card_number: "23", result: 1, credit_card_expiration_date: "12/26")
        @invoice_item_1_i1_c3 = @invoice_1_c3.invoice_items.create!(invoice_id: @invoice_1_c3.id, item_id: @item_1_m6.id, quantity: 1, unit_price: @item_1_m6.unit_price, status: 0)

      @invoice_2_c3 = @customer_3.invoices.create!(status: 2)
        @transaction_1_i2_c3 = @invoice_2_c3.transactions.create!(credit_card_number: "31", result: 1, credit_card_expiration_date: "11/23")
        @transaction_2_i2_c3 = @invoice_2_c3.transactions.create!(credit_card_number: "3", result: 1, credit_card_expiration_date: "10/23")
        @invoice_item_1_i2_c3 = @invoice_2_c3.invoice_items.create!(invoice_id: @invoice_2_c3.id, item_id: @item_1_m1.id, quantity: 1, unit_price: @item_1_m1.unit_price, status: 0)

      @invoice_3_c3 = @customer_3.invoices.create!(status: 2)
        @transaction_1_i3_c3 = @invoice_3_c3.transactions.create!(credit_card_number: "551", result: 1, credit_card_expiration_date: "11/23")
        @transaction_2_i3_c3 = @invoice_3_c3.transactions.create!(credit_card_number: "253", result: 1, credit_card_expiration_date: "12/26")
        @invoice_item_1_i3_c3 = @invoice_3_c3.invoice_items.create!(invoice_id: @invoice_3_c3.id, item_id: @item_1_m2.id, quantity: 1, unit_price: @item_1_m2.unit_price, status: 0)

      @invoice_4_c3 = @customer_3.invoices.create!(status: 2)
        @transaction_1_i4_c3 = @invoice_4_c3.transactions.create!(credit_card_number: "1", result: 0, credit_card_expiration_date: "11/23")
        @invoice_item_1_i4_c3 = @invoice_4_c3.invoice_items.create!(invoice_id: @invoice_4_c3.id, item_id: @item_1_m6.id, quantity: 1, unit_price: @item_1_m6.unit_price, status: 0)

      @invoice_5_c3 = @customer_3.invoices.create!(status: 1)
        @transaction_1_i5_c3 = @invoice_5_c3.transactions.create!(credit_card_number: "4551", result: 0, credit_card_expiration_date: "9/23")
        @invoice_item_1_i5_c3 = @invoice_5_c3.invoice_items.create!(invoice_id: @invoice_5_c3.id, item_id: @item_1_m6.id, quantity: 1, unit_price: @item_1_m6.unit_price, status: 0)

    @customer_4 = Customer.create!(first_name: "Sarah", last_name: "Tumlen")
      # @customer_4 invoices
      @invoice_1_c4 = @customer_4.invoices.create!(status: 1)
        @transaction_1_i1_c4 = @invoice_1_c4.transactions.create!(credit_card_number: "4426", result: 0, credit_card_expiration_date: "04/21")
        @invoice_item_1_i1_c4 = @invoice_1_c4.invoice_items.create!(invoice_id: @invoice_1_c4.id, item_id: @item_1_m6.id, quantity: 1, unit_price: @item_1_m6.unit_price, status: 0)

      @invoice_2_c4 = @customer_4.invoices.create!(status: 1)
        @transaction_1_i2_c4 = @invoice_2_c4.transactions.create!(credit_card_number: "4420", result: 1, credit_card_expiration_date: "03/11")
        @invoice_item_1_i2_c4 = @invoice_2_c4.invoice_items.create!(invoice_id: @invoice_2_c4.id, item_id: @item_1_m1.id, quantity: 1, unit_price: @item_1_m1.unit_price, status: 0)

      @invoice_3_c4 = @customer_4.invoices.create!(status: 0)
        @transaction_1_i3_c4 = @invoice_3_c4.transactions.create!(credit_card_number: "4020", result: 1, credit_card_expiration_date: "12/30")
        @invoice_item_1_i3_c4 = @invoice_3_c4.invoice_items.create!(invoice_id: @invoice_3_c4.id, item_id: @item_1_m1.id, quantity: 1, unit_price: @item_1_m1.unit_price, status: 0)

      @invoice_4_c4 = @customer_4.invoices.create!(status: 0)
        @transaction_1_i4_c4 = @invoice_4_c4.transactions.create!(credit_card_number: "4444", result: 1, credit_card_expiration_date: "06/06")
        @invoice_item_1_i4_c4 = @invoice_4_c4.invoice_items.create!(invoice_id: @invoice_4_c4.id, item_id: @item_1_m4.id, quantity: 1, unit_price: @item_1_m4.unit_price, status: 0)

      @invoice_5_c4 = @customer_4.invoices.create!(status: 2)
        @transaction_1_i5_c4 = @invoice_5_c4.transactions.create!(credit_card_number: "4004", result: 0, credit_card_expiration_date: "09/08")
        @invoice_item_1_i5_c4 = @invoice_5_c4.invoice_items.create!(invoice_id: @invoice_5_c4.id, item_id: @item_1_m4.id, quantity: 1, unit_price: @item_1_m4.unit_price, status: 0)


    @customer_5 = Customer.create!(first_name: "Sal", last_name: "Garza")
      #@customer_5 invoices
      @invoice_1_c5 = @customer_5.invoices.create!(status: 2)
        @transaction_1_i1_c5 = @invoice_1_c5.transactions.create!(credit_card_number: "823479832", result: 0, credit_card_expiration_date: "11/23")
        @transaction_2_i1_c5 = @invoice_1_c5.transactions.create!(credit_card_number: "823479832", result: 1, credit_card_expiration_date: "11/23")
        @invoice_item_1_i1_c5 = @invoice_1_c5.invoice_items.create!(invoice_id: @invoice_1_c5.id, item_id: @item_1_m4.id, quantity: 1, unit_price: @item_1_m4.unit_price, status: 0)

      @invoice_2_c5 = @customer_5.invoices.create!(status: 1)
        @transaction_1_i2_c5 = @invoice_2_c5.transactions.create!(credit_card_number: "123489723", result: 1, credit_card_expiration_date: "04/24")
        @invoice_item_1_i2_c5 = @invoice_2_c5.invoice_items.create!(invoice_id: @invoice_2_c5.id, item_id: @item_1_m2.id, quantity: 1, unit_price: @item_1_m2.unit_price, status: 0)

      @invoice_3_c5 = @customer_5.invoices.create!(status: 2)
        @transaction_1_i3_c5 = @invoice_3_c5.transactions.create!(credit_card_number: "123489723", result: 1, credit_card_expiration_date: "04/24")
        @invoice_item_1_i3_c5 = @invoice_3_c5.invoice_items.create!(invoice_id: @invoice_3_c5.id, item_id: @item_1_m1.id, quantity: 1, unit_price: @item_1_m1.unit_price, status: 0)

      @invoice_4_c5 = @customer_5.invoices.create!(status: 0)
        @transaction_1_i4_c5 = @invoice_4_c5.transactions.create!(credit_card_number: "7892314", result: 0, credit_card_expiration_date: "12/23")
        @invoice_item_1_i4_c5 = @invoice_4_c5.invoice_items.create!(invoice_id: @invoice_4_c5.id, item_id: @item_1_m6.id, quantity: 1, unit_price: @item_1_m6.unit_price, status: 0)

      @invoice_5_c5 = @customer_5.invoices.create!(status: 1)
        @transaction_1_i5_c5 = @invoice_5_c5.transactions.create!(credit_card_number: "798012384", result: 1, credit_card_expiration_date: "08/24")
        @invoice_item_1_i5_c5 = @invoice_5_c5.invoice_items.create!(invoice_id: @invoice_5_c5.id, item_id: @item_1_m2.id, quantity: 1, unit_price: @item_1_m2.unit_price, status: 0)

    @customer_6 = Customer.create!(first_name: "Josh", last_name: "Posh")
      #@customer_6 invoices 
      @invoice_1_c6 = @customer_6.invoices.create!(status: 1)
        @transaction_1_i1_c6 = @invoice_1_c6.transactions.create!(credit_card_number: "4427", result: 1, credit_card_expiration_date: "12/24")
        @transaction_2_i1_c6 = @invoice_1_c6.transactions.create!(credit_card_number: "8088", result: 0, credit_card_expiration_date: "12/23")
        @invoice_item_1_i1_c6 = @invoice_1_c6.invoice_items.create!(invoice_id: @invoice_1_c6.id, item_id: @item_4_m5.id, quantity: 1, unit_price: @item_4_m5.unit_price, status: 1)

      @invoice_2_c6 = @customer_6.invoices.create!(status: 0)
        @transaction_1_i2_c6 = @invoice_2_c6.transactions.create!(credit_card_number: "8089", result: 0, credit_card_expiration_date: "12/23")
        @transaction_2_i2_c6 = @invoice_2_c6.transactions.create!(credit_card_number: "8087", result: 1, credit_card_expiration_date: "12/23")
        @invoice_item_1_i2_c6 = @invoice_2_c6.invoice_items.create!(invoice_id: @invoice_2_c6.id, item_id: @item_1_m5.id, quantity: 1, unit_price: @item_1_m5.unit_price, status: 0)

      @invoice_3_c6 = @customer_6.invoices.create!(status: 1)
        @transaction_1_i3_c6 = @invoice_3_c6.transactions.create!(credit_card_number: "8084", result: 0, credit_card_expiration_date: "12/23")
        @transaction_2_i3_c6 = @invoice_3_c6.transactions.create!(credit_card_number: "8083", result: 1, credit_card_expiration_date: "12/23")
        @invoice_item_1_i3_c6 = @invoice_3_c6.invoice_items.create!(invoice_id: @invoice_3_c6.id, item_id: @item_6_m5.id, quantity: 1, unit_price: @item_6_m5.unit_price, status: 1)

      @invoice_4_c6 = @customer_6.invoices.create!(status: 2)
        @transaction_1_i4_c6 = @invoice_4_c6.transactions.create!(credit_card_number: "8082", result: 1, credit_card_expiration_date: "12/23")
        @invoice_item_1_i4_c6 = @invoice_4_c6.invoice_items.create!(invoice_id: @invoice_4_c6.id, item_id: @item_8_m5.id, quantity: 20, unit_price: @item_8_m5.unit_price, status: 1)

      @invoice_5_c6 = @customer_6.invoices.create!(status: 1)
        @transaction_1_i5_c6 = @invoice_5_c6.transactions.create!(credit_card_number: "8081", result: 0, credit_card_expiration_date: "10/23")
        @invoice_item_1_i5_c6 = @invoice_5_c6.invoice_items.create!(invoice_id: @invoice_5_c6.id, item_id: @item_1_m5.id, quantity: 1, unit_price: @item_1_m5.unit_price, status: 0)

    @customer_7 = Customer.create!(first_name: "Norris", last_name: "Chuck")
      @invoice_1_c7 = @customer_7.invoices.create!(status: 1)
        @transaction_1_i1_c7 = @invoice_1_c7.transactions.create!(credit_card_number: "89123894701", result: 1, credit_card_expiration_date: "08/28")
        @invoice_item_1_i1_c7 = @invoice_1_c7.invoice_items.create!(invoice_id: @invoice_1_c7.id, item_id: @item_4_m5.id, quantity: 1, unit_price: @item_4_m5.unit_price, status: 1)

    @customer_8 = Customer.create!(first_name: "Paul", last_name: "Mc'arther")
      @invoice_1_c8 = @customer_8.invoices.create!(status: 1)
        @transaction_1_i1_c8 = @invoice_1_c8.transactions.create!(credit_card_number: "89123894701", result: 1, credit_card_expiration_date: "08/28")
        @invoice_item_1_i1_c8 = @invoice_1_c8.invoice_items.create!(invoice_id: @invoice_1_c8.id, item_id: @item_4_m5.id, quantity: 1, unit_price: @item_4_m5.unit_price, status: 1)

    @customer_9 = Customer.create!(first_name: "Tammy", last_name: "Newton")
      @invoice_1_c9 = @customer_9.invoices.create!(status: 1)
        @transaction_1_i1_c9 = @invoice_1_c9.transactions.create!(credit_card_number: "89123894701", result: 1, credit_card_expiration_date: "08/28")
        @invoice_item_1_i1_c9 = @invoice_1_c9.invoice_items.create!(invoice_id: @invoice_1_c9.id, item_id: @item_4_m5.id, quantity: 1, unit_price: @item_4_m5.unit_price, status: 1)

    @customer_10 = Customer.create!(first_name: "Julie", last_name: "Musters")
    
end