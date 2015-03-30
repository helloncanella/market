class User < ActiveRecord::Base
	has_many :products, through: :baskets
	has_one :basket
end
