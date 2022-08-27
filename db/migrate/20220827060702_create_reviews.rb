class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.references :user, null: false, foreign_key: true
      t.references :university, null: false, foreign_key: true
      t.integer :reputabilty_rating
      t.integer :education_quality_rating
      t.integer :campus_facilities_accom_rating
      t.integer :course_difficulty_rating
      t.integer :social_element_rating
      t.integer :value_for_money_rating
      t.integer :safety_rating
      t.integer :career_services_rating
      t.text :comment

      t.timestamps
    end
  end
end
