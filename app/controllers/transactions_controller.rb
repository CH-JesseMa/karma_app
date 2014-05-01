class TransactionsController < ApplicationController

	def index
		if current_user
			@transactions = current_user.generate_transactions_array
		end
	end

	def new
		@transaction = Transaction.new
	end

	def create
		post = Post.find_by(id: params[:post_id])
		transaction = Transaction.new(post_id: post.id, point_value: post.karma_value)

		transaction.populate_transaction_table(post, current_user)

		if transaction.save
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

  # create_table "transactions", force: true do |t|
  #   t.integer  "requester_id"
  #   t.integer  "servicer_id"
  #   t.boolean  "requester_complete"
  #   t.boolean  "servicer_complete"
  #   t.integer  "point_value"
  #   t.integer  "post_id"
  #   t.boolean  "is_complete",        default: false
  # end
