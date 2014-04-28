require 'spec_helper'

describe User do
  # associations
  it { should have_many(:posts) }
  xit { should have_many(:transactions) }
  it { should have_many(:comments) }
  # authentication
  it { should have_secure_password }
  it { should validate_uniqueness_of(:email) }
  it { should validate_confirmation_of(:password) }
  xit { should ensure_length_of(:password).is_at_least(8).is_at_most(16) }
end

# shoulda matchers:
# http://rubydoc.info/github/thoughtbot/shoulda-matchers/master/frames
