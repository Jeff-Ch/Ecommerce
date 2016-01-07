class Product < ActiveRecord::Base
	has_one :category
	has_many :users, :through => :carts
end
