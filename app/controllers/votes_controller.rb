class VotesController < ApplicationController
  before_action :set_review, only: %i[create]

  def create
    @vote = Vote.new(vote_params)
    @vote.user = current_user
    @vote.review = @review
    @vote.save
  end

  private

  def set_review
    @review = Review.find(params[:review_id])
  end

  def vote_params
    params.require(:vote).permit(:status)
  end

end
