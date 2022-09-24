class AddCoursesToDepartments < ActiveRecord::Migration[7.0]
  def change
    add_column :departments, :courses, :string
  end
end
