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

Cart.create(:user_id => User.last.id, :product_id => 11, :quantity => 1, :order_id => 1)
Cart.create(:user_id => User.last.id, :product_id => 3, :quantity => 1, :order_id => 1)
Cart.create(:user_id => User.last.id, :product_id => 7, :quantity => 1, :order_id => 1)

Order.create(:shipspeed_id => 1, :orderstatus_id => 1)

Cart.create(:user_id => User.last.id, :product_id => 1, :quantity => 1)

Category.create(:name => "Phones")
Category.create(:name => "Televisions")
Category.create(:name => "Cameras")
Category.create(:name => "Headphones")
Category.create(:name => "Laptops")

Product.create(:name => "Cellphone A", :description => "Latest verison of the best selling phone on the market", :url => "p1.png", :price => '699.99', :category_id => 1)

Product.create(:name => "TV A", :description => "1080p with 2 HDMI connections. (AAA Batteries are needed)", :url => "t1.png", :price => '499.99', :category_id => 2)

Product.create(:name => "Camera A", :description => "Capture life's great moments", :url => "c1.png", :price => '399.99', :category_id => 3)

Product.create(:name => "Headphone B", :description => "Active noise cancelling", :url => "h2.png", :price => '299.99', :category_id => 4)

Product.create(:name => "Cellphone B", :description => "Now with Edge Screen for easy app access", :url => "p2.png", :price => '699.99', :category_id => 1)

Product.create(:name => "Laptop C", :description => "Perfect for those on a budget", :url => "l3.png", :price => '149.99', :category_id => 5)

Product.create(:name => "TV D", :description => "Features black and white motion pictures!", :url => "t4.png", :price => '19.99', :category_id => 2)

Product.create(:name => "TV B", :description => "Features two HDMI ports and easy installation", :url => "t2.png", :price => '399.99', :category_id => 2)

Product.create(:name => "Camera B", :description => "Sleek and slim design", :url => "c2.jpg", :price => '199.99', :category_id => 3)

Product.create(:name => "Laptop A", :description => "Touchscreen laptop that easily converts to a Tablet", :url => "l1.png", :price => '499.99', :category_id => 5)

Product.create(:name => "Headphone A", :description => "Hear music the way it was intended to be heard", :url => "h1.png", :price => '299.99', :category_id => 4)

Product.create(:name => "Cellphone D", :description => "Semi-portable phone from the past", :url => "p4.png", :price => '49.99', :category_id => 1)

Product.create(:name => "TV C", :description => "Perfect for family game night", :url => "t3.png", :price => '799.99', :category_id => 2)

Product.create(:name => "Laptop B", :description => "Must have for mobile gamers", :url => "l2.png", :price => '999.99', :category_id => 5)

Product.create(:name => "Camera C", :description => "Perfect capturing active moments", :url => "c3.png", :price => '299.99', :category_id => 3)

Product.create(:name => "Cellphone C", :description => "Back to basics", :url => "p3.png", :price => '29.99', :category_id => 1)



