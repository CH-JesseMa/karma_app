require 'spec_helper'

describe Comment do

	it { should belong_to(:post) }
	it { should have_one(:user) }

end
