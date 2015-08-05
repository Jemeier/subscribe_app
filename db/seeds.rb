
# creates a mock subscription for each of the products currently in the database
463.times do |n|
  version = "monthly"
  month_interval = 1
  price = 10.00
  Subscription.create!( version: version,
                        month_interval: month_interval,
                        price: price,
                        product_id: (n+1))
end

