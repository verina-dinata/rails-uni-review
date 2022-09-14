class VotesController < ApplicationController
  before_action :set_review, only: %i[create destroy]
  skip_before_action :verify_authenticity_token, only: %i[create destroy]

  def create
    @review.votes.where(user: current_user).delete_all
    @vote = Vote.create!(
      status: params[:vote],
      user: current_user,
      review: @review
    )
    render json: {
      total_upvote: @review.votes.upvote.size,
      total_downvote: @review.votes.downvote.size
    }, status: :ok
  end

  def destroy
    @review.votes.where(user: current_user).delete_all
    render json: {
      total_upvote: @review.votes.upvote.size,
      total_downvote: @review.votes.downvote.size
    }, status: :ok
  end

  private

  def set_review
    @review = Review.find(params[:review_id])
  end
end
