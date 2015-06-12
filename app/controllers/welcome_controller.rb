class WelcomeController < ApplicationController
  def index
    @subrebbits = Subrebbit.all
  end

  def category
    @posts = Post.where(category: params[:name])
  end

  def about
  end
end
