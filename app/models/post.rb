class Post < ActiveRecord::Base
  has_many :votes
  has_many :comments
  belongs_to :user
  belongs_to :subrebbit
end
