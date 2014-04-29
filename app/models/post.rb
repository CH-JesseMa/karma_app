# == Schema Information
#
# Table name: posts
#
#  id             :integer          not null, primary key
#  karma_value    :integer
#  status         :boolean
#  type           :string(255)
#  title          :string(255)
#  content        :string(255)
#  image_url      :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  transaction_id :integer
#  user_id        :integer
#

class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end




