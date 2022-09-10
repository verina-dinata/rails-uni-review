class Favorite < ApplicationRecord
  validates :user, uniqueness: { scope: :university }
  belongs_to :user
  belongs_to :university
end
