class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :review

  enum :status, %i[upvote downvote]
end
