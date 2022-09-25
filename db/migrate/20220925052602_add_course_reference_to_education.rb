class AddCourseReferenceToEducation < ActiveRecord::Migration[7.0]
  def change
    add_reference :educations, :course, index: true
  end
end
