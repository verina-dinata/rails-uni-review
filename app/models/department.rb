class Department < ApplicationRecord
  has_many :universities
  has_many :educations

end
