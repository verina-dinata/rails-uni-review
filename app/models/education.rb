class Education < ApplicationRecord
  belongs_to :university
  belongs_to :user
  belongs_to :department
  belongs_to :course

  validates :start_date, :end_date, :university_email, :academic_degree, :course, presence: true
  validates :end_date, comparison: { greater_than: :start_date }
end
