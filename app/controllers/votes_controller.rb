class VotesController < ApplicationController
  def create
    if @current_user
      vote = Vote.create(vote_params) unless vote = Vote.find_by(vote_params)
      update(vote, params)
    else
      authenticate_user!
    end
  end

  def update(vote, params)
    user = User.find(params[:user_id])
    if upvotes = params[:upvotes]
      vote.upvotes += upvotes.to_i
      user.carma += upvotes.to_i
    elsif downvotes = params[:downvotes]
      vote.downvotes += downvotes.to_i
      user.carma -= downvotes.to_i
    end

    if user.save && vote.save
      redirect_to :back
    else
      flash[:alert] = 'Errors'
      render :back
    end
  end
  def vote_params
    params.permit(:user_id, :post_id, :comment_id)
  end

end
