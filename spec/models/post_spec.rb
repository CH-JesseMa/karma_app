# == Schema Information
#
# Table name: posts
#
#  id             :integer          not null, primary key
#  karma_value    :integer
#  is_open        :boolean
#  post_type      :string(255)
#  title          :string(255)
#  content        :string(255)
#  image_url      :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  transaction_id :integer
#  user_id        :integer
#

require 'spec_helper'

describe Post do

	it { should belong_to(:user) }
	it { should have_many(:comments) }

end
