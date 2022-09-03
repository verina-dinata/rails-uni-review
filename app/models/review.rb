class Review < ApplicationRecord
  belongs_to :user
  belongs_to :university

  validates :comment, presence: true
  validates :reputabilty_rating, :education_quality_rating, :campus_facilities_accom_rating, :course_difficulty_rating, :social_element_rating, :value_for_money_rating, :safety_rating, :career_services_rating, numericality: { less_than: 6, greater_than: 0 }
  validates :reputabilty_rating, :education_quality_rating, :campus_facilities_accom_rating, :course_difficulty_rating, :social_element_rating, :value_for_money_rating, :safety_rating, :career_services_rating, presence: true

end
