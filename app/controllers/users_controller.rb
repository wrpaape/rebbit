class UsersController < ApplicationController
  def index
    @users = User.all.order(carma: :desc)
    @votes = []
    @users.each{ |user| @votes << user.vote_breakdown }
    @votes
  end

  def new
    @user = User.new
  end


  def create
    user = User.new(user_params)
    if user.save
      #session[:user_id] = user.id
      redirect_to root_path, notice: 'User created!'
    else
      flash[:alert] = 'Errors Occured.'
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @vote_breakdown = @user.vote_breakdown
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
