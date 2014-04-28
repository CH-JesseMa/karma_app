class PointsTransferController < ApplicationController

	def new
		@user = User.find_by(id: session[:user_id])
	end

	def create
		donor = User.find_by(id: session[:user_id])
		recipient = User.find_by(user_name: params[:recipient])
		amount = params[:amount].to_i

		if donor && recipient && amount > 0
			donor.transfer_points(recipient, amount)
			redirect_to user_path, notice: "You have successfully transferred points to #{recipient.user_name}!"
		else
			render :new, notice: "Oops, something went wrong.  Try again!"
		end
	end

end