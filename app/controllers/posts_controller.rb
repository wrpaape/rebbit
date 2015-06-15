class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    authenticate_user!
    @post = Post.new
    @subrebbit = Subrebbit.find(params[:format])
  end

  def create
    authenticate_user!
    @post = Post.create(post_params)
    @vote = Vote.create(post_id: @post.id, user_id: @current_user.id)
    if @post.save
      redirect_to subrebbit_path(Subrebbit.find(@post.subrebbit_id), :params => { sort_by: "latest"}), notice: "new post successfully created"
    else
      flash[:alert] = "error occured"
      render :new
    end
  end

  def show
    @post = Post.find(params[:id])
    if params[:sort_by] == "latest"
      @comments = @post.comments.order(created_at: :desc)
    elsif params[:sort_by] == "carma"
      @comments = @post.comments.sort_by { |comment| comment.votes.first.upvotes - comment.votes.first.downvotes }.reverse
    end
    @post
    @comments
  end

  def edit
    authenticate_user!
    @post = Post.find(params[:id])
  end

  def update
    authenticate_user!
    post = Post.find(params[:id])
    if post.update(post_params)
      redirect_to post, notice: 'post successfully updated'
    else
      flash[:alert] = "an error occured"
      render :edit
    end
  end

  def destroy
    authenticate_user!
    Post.destroy(params[:id])
    redirect_to posts_path, notice: 'destroyed'
  end

  private
  def post_params
    params.require(:post).permit(:user_id, :subrebbit_id, :title, :body)
  end
end
