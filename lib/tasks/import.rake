require 'csv'

task :import => :environment do 

  CSV.foreach("db/product_list.csv", :encoding => 'windows-1251:utf-8', :headers => true) do |row|
     Product.create(row.to_hash)
  end
end