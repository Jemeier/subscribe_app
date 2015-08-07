unless (User.where(email: 'test@example.com'))
  user = User.new
  user.email = 'test@example.com'
  user.password = 'foobar44'
  user.save!
end

# creates a mock subscription for each of the products currently in the database
if Subscription.count < 463
  463.times do |n|
    version = "monthly"
    month_interval = 1
    price = 10.00
    Subscription.create!( version: version,
                          month_interval: month_interval,
                          price: price,
                          product_id: (n+1))
  end
end

  u = User.first
  10.times do |n|
  sub = Subscription.find(n+1)
  u.subscriptions << sub
end


# products = Product.all
# products.each do |p|
#   if p.image_file_name == nil
#     p.image_file_name = "photo#{p.image_num}.jpeg"
#     p.save
#   end
# end

