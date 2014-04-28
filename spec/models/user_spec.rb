# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  user_name       :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

# require 'spec_helper'

# describe User do
#   # associations
#   it { should have_many(:posts) }
#   # authentication
#   it { should have_secure_password }
#   it { should validate_uniqueness_of(:email) }
#   it { should validate_confirmation_of(:password) }
#   it { should ensure_length_of(:password).is_at_least(8).is_at_most(16) }
# end

# shoulda matchers:
# http://rubydoc.info/github/thoughtbot/shoulda-matchers/master/frames
