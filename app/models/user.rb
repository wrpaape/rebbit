class User < ActiveRecord::Base
  has_many :posts
  has_many :comments
  has_many :votes
  has_secure_password

  def vote_breakdown
    vote_hash = {upvotes: 0, downvotes: 0}
    votes.each do |vote|
      vote_hash[:upvotes] += vote.upvotes
      vote_hash[:downvotes] += vote.downvotes
    end
    vote_hash
  end
end
