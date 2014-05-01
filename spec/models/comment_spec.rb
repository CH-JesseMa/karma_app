# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  post_id    :integer
#  text       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Comment do

	it { should belong_to(:post) }
	it { should belong_to(:user) }

end
