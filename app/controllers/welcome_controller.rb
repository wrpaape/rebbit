class WelcomeController < ApplicationController
  def index
    @subrebbits = Subrebbit.all.sort_by { |subrebbit| subrebbit.posts.count }.reverse
    @user_counts = []
    @subrebbits.each do |subrebbit|
      user_ids = []
      subrebbit.posts.each do |post|
        user_ids << post.user_id unless user_ids.include?(post.user_id)
        post.comments.each do |comment|
          user_ids << comment.user_id unless user_ids.include?(comment.user_id)
        end
      end
      @user_counts << user_ids.size
    end

  end

  def category
    @posts = Post.where(category: params[:name])
  end

  def about
  end
end
