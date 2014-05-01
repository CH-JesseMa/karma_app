class WelcomeController < ApplicationController

	def index
		@transactions = current_user.generate_transactions_array
	end
	
end