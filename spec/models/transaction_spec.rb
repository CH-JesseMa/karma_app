require 'spec-helper'

describe Transaction do
	
	it { should have_one(:post) }
	it { should have_many(:users) }
	
end