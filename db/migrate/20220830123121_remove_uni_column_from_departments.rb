class RemoveUniColumnFromDepartments < ActiveRecord::Migration[7.0]
  def change
    remove_reference :departments, :university, index: true
  end
end
