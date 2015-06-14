class VotesController < ApplicationController
  def create
    vote = Vote.create(vote_params) unless vote = Vote.find_by(vote_params)
    update(vote, params)
  end

  def update(vote, params)
    if upvotes = params[:upvotes]
      vote.upvotes += upvotes.to_i
    elsif downvotes = params[:downvotes]
      vote.downvotes += downvotes.to_i
    end

    if vote.save
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
