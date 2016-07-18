class Order < ActiveRecord::Base
	belongs_to :product
end

class Order < ActiveRecord::Base
	has_many :orders
end