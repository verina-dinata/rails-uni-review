class University < ApplicationRecord
  has_many :departments
  has_many :reviews, dependent: :destroy
  has_many :favorites
  has_many :educations

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def retrieve_ratings(attr)
    total = 0
    self.reviews.each do |review|
      total += review.send(attr)
    end
    (total / self.reviews.count).to_f.round(1)
  end

  def reputability_avg
    retrieve_ratings(:reputabilty_rating)
  end

  def education_quality_avg
    retrieve_ratings(:education_quality_rating)
  end

  def campus_facilities_accom_avg
    retrieve_ratings(:campus_facilities_accom_rating)
  end

  def course_difficulty_avg
    retrieve_ratings(:course_difficulty_rating)
  end

  def social_element_avg
    retrieve_ratings(:social_element_rating)
  end

  def value_for_money_avg
    retrieve_ratings(:value_for_money_rating)
  end

  def safety_avg
    retrieve_ratings(:safety_rating)
  end

  def career_services_avg
    retrieve_ratings(:career_services_rating)
  end

  def global_avg
    stat1 = reputability_avg
    stat2 = education_quality_avg
    stat3 = campus_facilities_accom_avg
    stat4 = course_difficulty_avg
    stat5 = social_element_avg
    stat6 = value_for_money_avg
    stat7 = safety_avg
    stat8 = career_services_avg
    (stat1 + stat2 + stat3 + stat4 + stat5 + stat6 + stat7 + stat8) / 8
  end
end
