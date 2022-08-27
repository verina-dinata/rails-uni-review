class AddAcademicDegreeToEducation < ActiveRecord::Migration[7.0]
  def change
    add_column :educations, :academic_degree, :string
  end
end
