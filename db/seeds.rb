# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ShipSpeed.create(:speed => "Standard")
ShipSpeed.create(:speed => "Expedited")
ShipSpeed.create(:speed => "2-Day")
ShipSpeed.create(:speed => "Next Day")

OrderStatus.create(:status => "Processing")
OrderStatus.create(:status => "Shipped")
OrderStatus.create(:status => "Cancelled")

User.create(:first_name => "John", :last_name => "Doe", :email => "test@gmail.com", :password => "12345678", :password_confirmation => "12345678")

Category.create(:name => "Phones")
Category.create(:name => "Televisions")
Category.create(:name => "Cameras")
Category.create(:name => "Headphones")
Category.create(:name => "Laptops")

Product.create(:name => "Cellphone A", :description => "Latest verison of the best selling phone on the market", :url => "http://www.techbox.ca/image/data/Product%20Photos/iphone6psilver-500x500.png", :price => '699.99', :category_id => 1)

Product.create(:name => "TV A", :description => "1080p with 2 HDMI connections. (AAA Batteries are needed)", :url => "http://iacom1-a.akamaihd.net/produtos/01/00/item/122701/4/122701411_1GG.png", :price => '499.99', :category_id => 2)

Product.create(:name => "Camera A", :description => "Capture life's great moments", :url => "https://www.ormsdirect.co.za/media/catalog/product/cache/1/image/1280x/040ec09b1e35df139433887a97daa66f/f/u/fuji-x-t-18-55mm-4.png", :price => '399.99', :category_id => 3)

Product.create(:name => "Headphone B", :description => "Hear music the way it was intended to be heard", :url => "http://images.bestbuy.com/BestBuy_US/en_US/images/abn/2015/global/buyingguides/RE_headphones/work2.png", :price => '299.99', :category_id => 4)

Product.create(:name => "Cellphone B", :description => "Active noise cancelling", :url => "https://regalbuyer.com/media/catalog/product/cache/1/image/500x500/9df78eab33525d08d6e5fb8d27136e95/g/a/galaxy-s6-edge-white1.png", :price => '699.99', :category_id => 1)

Product.create(:name => "Laptop C", :description => "Perfect for those on a budget", :url => "http://www.elnstore.com/image/cache/data/Laptop-Netbook/Acer/Acer2015/August/E5-473-32GU-Acer-Tropical-Yellow-500x500.png", :price => '149.99', :category_id => 5)

Product.create(:name => "TV D", :description => "Features black and white motion pictures!", :url => "https://pbs.twimg.com/profile_images/1737726843/small-old-tv.png", :price => '19.99', :category_id => 2)

Product.create(:name => "TV B", :description => "Features two HDMI ports and easy installation", :url => "http://sweeps.thedailyjackpot.com/images/prizes/tv3.fw.png", :price => '399.99', :category_id => 2)

Product.create(:name => "Camera B", :description => "Sleek and slim design", :url => "http://fix4ulondon.com/133-home_default/digital-camera-.jpg", :price => '199.99', :category_id => 3)

Product.create(:name => "Laptop A", :description => "Touchscreen laptop that easily converts to a Tablet", :url => "http://www.computerduniya.com/image/cache/data/Acer%20Laptop/S3-391-photo-gallery-04-500x500.png", :price => '499.99', :category_id => 5)

Product.create(:name => "Headphone A", :description => "Hear music the way it was intended to be heard", :url => "http://bullet-tech.com/images/products/151101_bbd_st2w_wht_02.png", :price => '299.99', :category_id => 4)

Product.create(:name => "Cellphone D", :description => "Semi-portable phone from the past", :url => "https://www.ukhomeandpersonalloans.co.uk/images/phone.png", :price => '49.99', :category_id => 1)

Product.create(:name => "TV C", :description => "Perfect for family game night", :url => "https://www.condor.dz/imgs/familles/158_98b41a23dba8eb114ed7d6dd1a41d3a8.gif", :price => '799.99', :category_id => 2)

Product.create(:name => "Laptop B", :description => "Must have for mobile gamers", :url => "http://laptoppriceinbd.com/image/cache/catalog/LAPTOP/lenovo/Lenovo%20IdeaPad%20100%20%205th%20Gen%20i3%20Laptop-500x500.png", :price => '999.99', :category_id => 5)

Product.create(:name => "Camera C", :description => "Perfect capturing active moments", :url => "http://www.pqigroup.com/files/20120702164718011.png", :price => '299.99', :category_id => 3)

Product.create(:name => "Cellphone C", :description => "Back to basics", :url => "http://www.celllocker.com/images/sanyo%20mirro.gif", :price => '29.99', :category_id => 1)


