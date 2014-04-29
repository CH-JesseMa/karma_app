class TransactionsController < ApplicationController

	def index
		@transactions = []

		if current_user
			requests =Transaction.where(requester_id: current_user.id)
			offers = Transaction.where(servicer_id: current_user.id)
			@transactions << requests
			@transactions << services
			@transactions.flatten
		end
	end

	def new
		@transaction = Transaction.new
	end

	def create
		@transaction = Transaction.new(transaction_params)

		if @transaction.save
			post = Post.find_by(id: @transaction.post_id)
			post.is_open = false
			post.save
			flash[:notice] = "All right!"
			redirect_to root_path
		else
			flash[:notice] = "Oops, something went wrong"
			render[:new]
		end
	end

	def edit
		@transaction = Transaction.find_by(id: params[:id])
	end

	def update
		@transaction = Transaction.find_by(id: params[:id])

		if @transaction.update(transaction_params)
			flash[:notice] = "Right on!"
			redirect_to root_path
		else
			flash[:notice] = "This is a bummer, man."
			render[:edit]
		end
	end

	private

	def transaction_params
		params.require(:transaction).permit(:requester_id, :servicer_id, :requester_complete, :servicer_complete, :point_value, :post_id)
    end

end