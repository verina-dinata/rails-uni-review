class AddDepartmentIdToEducation < ActiveRecord::Migration[7.0]
  def change
    add_reference :educations, :department, index: true
  end
end
