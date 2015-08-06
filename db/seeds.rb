
unless (User.where(email: 'test@example.com'))
  user = User.new
  user.email = 'test@example.com'
  user.password = 'foobar44'
  user.save!
end

u = User.first
10.times do |n|
  sub = Subscription.find(n+1)
  u.subscriptions << sub
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

products = Product.all

products.each do |product|
   product.image = File.open("./wp/all_photos/photo#{product.image_num}.jpeg","rb")
   product.save
end




# uploads initial images through paperclip
# products = Product.all
# products.each do |product|
#    product.image = File.open("./wp/all_photos/photo#{product.image_num}.jpeg","rb")
#    product.save
# end



