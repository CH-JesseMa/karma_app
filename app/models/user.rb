class User < ActiveRecord::Base
  has_many :posts
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
