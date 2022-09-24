class RemoveCoursesFromDepartments < ActiveRecord::Migration[7.0]
  def change
    remove_column :departments, :courses
  end
end
