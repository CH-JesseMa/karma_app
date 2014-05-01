class WelcomeController < ApplicationController

	def index

    if logged_in?
      @transactions = current_user.generate_transactions_array
      @local_posts = current_user.find_local_posts
      @open_posts = current_user.return_open_posts
    end


	end

end
