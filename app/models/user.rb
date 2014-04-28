# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  location        :string(255)
#  points          :integer
#  admin           :boolean          default(FALSE)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  has_many :posts

  has_secure_password

  validates(:name,     { :presence     => true })
  validates(:email,    { :uniqueness   => { case_sensitive: false }})
end

# user:
# has_many: posts

# username:string
# password:string (bcrypt)
# email:string
# location:string (city,state)
# karma_points: integer
# is_admin?: boolean
# profile: string (image_url)
# skills: text
# timestamps
