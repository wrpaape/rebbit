class WelcomeController < ApplicationController
  def index
    @subrebbits = Subrebbit.all.sort_by { |subrebbit| subrebbit.posts.count }.reverse
  end

  def category
    @posts = Post.where(category: params[:name])
  end

  def about
  end
end
