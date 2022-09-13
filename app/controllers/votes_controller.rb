class VotesController < ApplicationController
  before_action :set_review, only: %i[create]

  def create
    puts params
    @vote = Vote.new(status: params[:vote])
    @vote.user = current_user
    @vote.review = @review
    @vote.save

  end

  private

  def set_review
    @review = Review.find(params[:review_id])
  end


end
