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
    if User.find_by(name: params[:name]) && User.find_by(email: params[:email])
      redirect_to :back, alert: "username and email is already taken"
    elsif User.find_by(name: params[:name])
      redirect_to :back, alert: "username is already taken"
    elsif User.find_by(email: params[:email])
      redirect_to :back, alert: "email is already taken"
    else
      user = User.new(user_params)
      if user.save
        session[:user_id] = user.id
        redirect_to root_path, notice: 'user created!'
      else
        flash[:alert] = 'errors occured.'
        render :new
      end
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
    params.permit(:name, :avatar, :email, :password, :password_confirmation)
  end
end
