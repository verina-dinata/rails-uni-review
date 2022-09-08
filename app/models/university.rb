class University < ApplicationRecord
  has_many :departments
  has_many :reviews, dependent: :destroy
  has_many :favorites
  has_many :educations

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
