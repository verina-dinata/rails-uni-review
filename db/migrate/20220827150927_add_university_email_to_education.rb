class AddUniversityEmailToEducation < ActiveRecord::Migration[7.0]
  def change
    add_column :educations, :university_email, :string
  end
end
