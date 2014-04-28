class Transaction < ActiveRecord::Base
	has_one :post
	has_many :users
end