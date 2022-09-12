class Vote < ApplicationRecord
  belongs_to :user_id
  belongs_to :review_id

  enum :type, %i[upvote downvote]
end
