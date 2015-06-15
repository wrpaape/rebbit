class CommentsController < ApplicationController
  def index
  end

  def new
    authenticate_user!
    @comment = Comment.new
    @post = Post.find(params[:format])
  end

  def create
    authenticate_user!
    @comment = Comment.create(comment_params)
    @vote = Vote.create(comment_id: @comment.id, user_id: @current_user.id)
    if @comment.save
      @post = Post.find(@comment.post_id)
      redirect_to post_path(@post, :params => { sort_by: "latest"}), notice: "new comment successfully created"
    else
      flash[:alert] = "error occured"
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def comment_params
    params.permit(:user_id, :post_id, :body)
  end
end
