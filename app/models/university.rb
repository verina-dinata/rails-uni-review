class University < ApplicationRecord
  has_many :departments
  has_many :reviews
  has_many :favorites
  has_many :educations
end
