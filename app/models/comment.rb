class Comment < ActiveRecord::Base
  has_many :votes
  belongs_to :user
  belongs_to :post
end
