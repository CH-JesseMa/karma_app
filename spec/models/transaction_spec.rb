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

require 'spec_helper'

describe Transaction do

	it { should have_one(:post) }

end
