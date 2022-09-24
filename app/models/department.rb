class Department < ApplicationRecord
  has_many :universities
  has_many :educations
  has_many :courses

end
