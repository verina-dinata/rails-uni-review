class Favorite < ApplicationRecord
  validates :user_id, uniqueness: { scope: :university_id }
  belongs_to :user
  belongs_to :university
end
