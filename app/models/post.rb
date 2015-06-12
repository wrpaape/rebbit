class Post < ActiveRecord::Base
  has_many :votes
  has_many :comments
  belongs_to :user
  belongs_to :subrebbit
  validates :title, :category, presence: {  message: "I am an optional message" }
  validates :body, length: { minimum: 5, message: "Are you sure you didn't want this longer?" }
end
