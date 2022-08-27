class Education < ApplicationRecord
  belongs_to :university
  belongs_to :user
  belongs_to :department
end
