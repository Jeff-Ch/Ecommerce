class Order < ActiveRecord::Base
  belongs_to :cart
  belongs_to :shipspeed
  belongs_to :orderstatus
end
