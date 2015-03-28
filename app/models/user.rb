class User < ActiveRecord::Base
	has_many :products :through :basket
	has_one :basket
end
