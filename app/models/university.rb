class University < ApplicationRecord
  has_many :departments
  has_many :reviews
  has_many :favorites
end
