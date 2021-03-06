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
#  name            :string(255)
#  location        :string(255)
#  is_admin        :boolean
#  profile         :string(255)
#  image_url       :string(255)
#  skills          :string(255)
#  comment_id      :integer
#  points          :integer          default(10)
#

class User < ActiveRecord::Base
  has_many :posts
  has_many :transactions
  has_many :comments

  has_secure_password

  validates :email, presence: true,  #validates that email is present and unique
  uniqueness: true,
  format: {
    with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
  }

  before_save :downcase_email

  def downcase_email   #method to downcase an email if user uses capitals
    self.email = email.downcase
  end

  def transfer_points(recipient, amount)
    self.points -= amount
    self.save

    recipient.points += amount 
    recipient.save

    return self.points
  end

  def generate_transactions_array
    transactions = []
    requests = Transaction.where(requester_id: self.id)
    offers = Transaction.where(servicer_id: self.id)
    transactions << requests
    transactions << offers
    transactions.flatten.flatten
  end

  def find_local_posts
    posts = []
    users = User.where(location: self.location)

    users.each do |user|
      posts << user.posts
    end

    posts = posts.flatten.flatten
  end

  def return_open_posts
    posts = self.posts

    open_posts = []

    posts.each do |post|
      if post.is_open
        open_posts << post
      end
    end
  end
end