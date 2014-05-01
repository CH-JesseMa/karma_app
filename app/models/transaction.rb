# == Schema Information
#
# Table name: transactions
#
#  id                 :integer          not null, primary key
#  requester_id       :integer
#  servicer_id        :integer
#  requester_agree    :boolean
#  servicer_agree     :boolean
#  requester_complete :boolean
#  servicer_complete  :boolean
#  is_completed       :boolean          default(FALSE)
#  point_value        :integer
#  created_at         :datetime
#  updated_at         :datetime
#  post_id            :integer
#  is_complete        :boolean          default(FALSE)
#

class Transaction < ActiveRecord::Base

	has_one :post
	has_many :users
	
	def populate_transaction_table(post, user)

		if post.post_type == "offer"
			self.update(servicer_id: post.user_id, requester_id: user.id)
		elsif post.post_type == "request"
			self.update(requester_id: post.user_id, servicer_id: user.id)
		end

		post.is_open = false
		post.save
	end

	def check_completion_status
		if self.requester_complete && self.servicer_complete
			self.update(is_complete: true)
		end
	end
		
end
