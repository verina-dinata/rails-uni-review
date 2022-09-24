class AddCoursesToDepartments < ActiveRecord::Migration[7.0]
  def change
    add_column :departments, :course, :string
  end
end
