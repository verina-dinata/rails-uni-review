class University < ApplicationRecord
  has_many :departments
  has_many :reviews, dependent: :destroy
  has_many :favorites
  has_many :educations
end
