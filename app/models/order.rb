class Order < ActiveRecord::Base
	belongs_to :product
	belongs_to :user
end

class Order < ActiveRecord::Base
	has_many :orders
end