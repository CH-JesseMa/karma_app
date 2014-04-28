require 'spec_helper'

describe Transaction do

	it { should have_one(:post) }
	xit { should have_many(:users) }

end
